package Sigmoid.PiecewiseTaylor.Multicycle

import Chisel.{Enum, switch}
import chisel3.stage.ChiselStage
import chisel3.util.{OHToUInt, is}
import chisel3._

import scala.math.{exp, log10, pow, round}

class SPTConstraints(val int_width: Int, val rat_width: Int, val total_regions: Int, val order_of_approx: Int) {

    // Total bits available in entire format.
    val bit_width: Int = int_width + rat_width
    val region_width: Int = scala.math.ceil(log10(total_regions+1)/log10(2)).toInt
    var order_width: Int = scala.math.ceil(log10(order_of_approx+1)/log10(2)).toInt
    if (order_width == 0) order_width = 1

    // mapToFixedPoint helper variables
    val pos_bound: Int =  pow(2, bit_width - 1).toInt - 1
    val neg_bound: Int = -pow(2, bit_width - 1).toInt

    println("\n------Parameter Meta------")
    println("Fixed-Point Format:  %d.%d".format(int_width, rat_width))
    println("Format Resolution:   %f".format(pow(2.0, -rat_width)))
    println("Format Range:        [%f, %f]".format(neg_bound/pow(2, rat_width), pos_bound/pow(2, rat_width)))
    println("Format (Data) Width: %d".format(int_width + rat_width))
    println("Region Select Width: %d".format(region_width))
    println("Order Select Width:  %d".format(order_width))
    println()

    // derive fixed point representations of boundary, a, b, and m constants from R regions
    val flt_boundaries: Seq[Double] = generateBoundaries(total_regions)
    val flt_h_shifts: Seq[Double] = generateHorizontalShifts(flt_boundaries)
    val flt_coeffs: Seq[Seq[Double]] = generateCoefficients(flt_h_shifts, order_of_approx+1)

    // debug: print out the entire matrix
    println("------Generated Constants------")
    println("Region Boundaries: " + flt_boundaries)
    println("Horizontal Shifts: " + flt_h_shifts)
    println("Coefficients (as matrix of size [Order X Regions]):")
    for (row <- flt_coeffs) {
        for (n <- row) {
            print("%.3f ".format(n))
        }
        println()
    }

    val fpi_boundaries: Seq[SInt] = flt_boundaries.map(x => mapToFixedPoint(x).S(bit_width.W))
    val fpi_h_shift: Seq[SInt] = flt_h_shifts.map(x => {
        if (x < -6 || x > 6) {
            0.S(bit_width.W)
        } else {
            mapToFixedPoint(-x).S(bit_width.W)
        }
    })
    val fpi_coeffs: Seq[Seq[SInt]] = flt_coeffs.map(_.map(x => mapToFixedPoint(x).S(bit_width.W)))

    // mapToFixedPoint: Map to Fixed Point Integer
    // converts input values into closest representable fixed-point
    // representation with int_width integer bits and rat_width rational
    // bits
    def mapToFixedPoint(flt: Double) : Int = {
        val fpi = round(flt * pow(2, rat_width))
        if(fpi < neg_bound || fpi > pos_bound) {
            throw new Exception(
                "Overflow Exception: Value: %f cannot be represented in %d integer bits".format(flt, int_width)
            )
        }
        fpi.toInt
    }

    // generateBoundaries: Creates a sequence of doubles that
    // represent the boundaries seperating each constant
    def generateBoundaries(R: Int): Seq[Double] = {
        if (R > 3) {
            val differenceBetweenBoundaries: BigDecimal = (6 + 6) / (R - 2)
            val inner = for (i <- BigDecimal(-6.0) to BigDecimal(6.0) by differenceBetweenBoundaries)
                yield  i.toDouble
            Seq(-6.0) ++ inner ++ Seq(6.0)
//            inner
        } else {
            Seq(-6, 6)
        }
    }

    // generateAs: using the boundary sequence, calculate the midpoint
    // of two neighboring boundaries.
    def generateHorizontalShifts(boundaries: Seq[Double]): Seq[Double] = {
        val innerAs: Seq[Double] = for(i <- 0 to boundaries.length-2)
            yield (boundaries(i) + boundaries(i+1))/2
        Seq(-7.0) ++ innerAs ++ Seq(7.0)
    }

    // generateMs: Using the midpoints, a, calculate the slope of UFS
    // at each midpoint.
    def generateCoefficients(flt_a: Seq[Double], order: Int): Seq[Seq[Double]] = {
        Seq.tabulate[Seq[Double]](order) {
            ord => flt_a.map(
                a => calculateCoefficient(a, ord)
            )
        }
    }

    def calculateCoefficient(midpoint_of_region: Double, order_of_approximation: Int): Double = {

        if (midpoint_of_region <= -6) {
            0.0
        } else if (midpoint_of_region <= 6) {
            val exp_mid = exp(midpoint_of_region)
            order_of_approximation match {
                case 0 => 1.0 / (exp(-midpoint_of_region) + 1.0)
                case 1 => exp_mid/pow(exp_mid + 1, 2)
                case 2 => -exp_mid * (exp_mid-1) / (2 * pow(exp_mid + 1, 3))
                case 3 => exp_mid * (-4 * exp_mid + (exp_mid * exp_mid) + 1) / (6 * pow(exp_mid + 1, 4))
                case 4 => -exp_mid * ((11 * exp_mid) + (-11 * pow(exp_mid, 2)) + pow(exp_mid, 3) - 1) / (24 * pow(exp_mid + 1, 5))
                case _ => 0.0
            }
        } else {
            order_of_approximation match {
                case 0 => 1.0
                case _ => 0.0
            }
        }


    }
}



class CheckBoundary(val constraints: SPTConstraints) extends Module {

    val io = IO(new Bundle {
        val x: SInt = Input(SInt(constraints.bit_width.W))
        val B_i: SInt = Input(SInt(constraints.bit_width.W))

        val leq_B_i: Bool = Output(Bool())
        val gt_B_i: Bool = Output(Bool())
    })

    // Module Function
    io.leq_B_i := (io.x <= io.B_i)
    io.gt_B_i := (io.x > io.B_i)
}

class BoundarySelect(val constraints: SPTConstraints) extends Module {

    val io = IO(new Bundle{
        val x: SInt = Input(SInt(constraints.bit_width.W))
//        val sel: Bool = Output(Bool())
        val region: UInt = Output(UInt(constraints.region_width.W))
    })

    //TODO: Check to see Reg(Vec) should be replaced with Mem
    val boundary_vector: Vec[SInt] = RegInit(VecInit(constraints.fpi_boundaries))

    // Module Instantiations
    val checkBoundaryModules: Seq[CheckBoundary] = for (i <- constraints.fpi_boundaries.indices)
        yield {
            val boundaryModule = Module(new CheckBoundary(constraints))
            boundaryModule.io.x := io.x
            boundaryModule.io.B_i := boundary_vector(i)
            boundaryModule
        }

    val OHencodedIdx: Seq[Bool] = for (i <- 0 until constraints.fpi_boundaries.length+1)
        yield {
            if (i == 0) {
                checkBoundaryModules.head.io.leq_B_i
            } else if (i == constraints.fpi_boundaries.length) {
                checkBoundaryModules.last.io.gt_B_i
            } else {
                checkBoundaryModules(i-1).io.gt_B_i & checkBoundaryModules(i).io.leq_B_i
            }
        }

    // Outgoing Wires
    io.region := OHToUInt(OHencodedIdx)
//    io.sel := OHencodedIdx.head | OHencodedIdx(1) | OHencodedIdx.last | OHencodedIdx(OHencodedIdx.length-2)

}

class ConstantSelect(val constraints: SPTConstraints) extends Module {

    val io = IO(new Bundle {
        val x: SInt = Input(SInt(constraints.bit_width.W))
        val order_idx: UInt = Input(UInt(constraints.order_width.W))
//        val sel: Bool = Output(Bool())
        val a_select: SInt = Output(SInt(constraints.bit_width.W))
        val m_select: SInt = Output(SInt(constraints.bit_width.W))
    })

    // Module Instantiations and Input Wire Assignments
    val boundarySelect: BoundarySelect = Module(new BoundarySelect(constraints))
    boundarySelect.io.x := io.x

    // Vector Instantiations
    val m_vector: Vec[Vec[SInt]] = VecInit.tabulate(constraints.order_of_approx+1, constraints.flt_h_shifts.length) {
        (x, y) => constraints.fpi_coeffs(x)(y)
    }
    val a_vector: Vec[SInt] = RegInit(VecInit(constraints.fpi_h_shift))

    // Outgoing Wires
//    io.sel := boundarySelect.io.sel
    io.a_select := a_vector(boundarySelect.io.region)
    io.m_select := m_vector(io.order_idx)(boundarySelect.io.region)

}

class TaylorExpansion(val constraints: SPTConstraints) extends Module {

    val io = IO(new Bundle {
        val initialize: Bool = Input(Bool())
        val compute_enable: Bool = Input(Bool())

        val xa: SInt = Input(SInt(constraints.bit_width.W))
        val mrn: SInt = Input(SInt(constraints.bit_width.W))

        val output: SInt = Output(SInt(constraints.bit_width.W))
    })

    // Registers
    val processed_input: SInt = RegInit(0.S(constraints.bit_width.W))
    val exponential_accumulator: SInt = RegInit(0.S(constraints.bit_width.W))
    val scalar: SInt = RegInit(0.S(constraints.bit_width.W))
    val product_accumulator: SInt = RegInit(0.S(constraints.bit_width.W))

    // Wires
    val exponential_accumulator_output: SInt = Wire(SInt(constraints.bit_width.W))
    val product_result: SInt = Wire(SInt(constraints.bit_width.W))

    // internal wiring
    product_result := (scalar * exponential_accumulator) >> constraints.rat_width
    exponential_accumulator_output := (exponential_accumulator * processed_input) >> constraints.rat_width
    io.output := product_accumulator

    when (io.initialize) {
        processed_input := io.xa
        exponential_accumulator := constraints.mapToFixedPoint(1).S
        scalar := io.mrn
        product_accumulator := 0.S
    } .elsewhen(io.compute_enable) {
        processed_input := processed_input
        exponential_accumulator := exponential_accumulator_output
        scalar := io.mrn
        product_accumulator := product_result + product_accumulator
    } .otherwise {
        processed_input := processed_input
        exponential_accumulator := exponential_accumulator
        scalar := 0.S
        product_accumulator := product_accumulator
    }
}

// PiecewiseLinear Module
class SPT(val constraints: SPTConstraints) extends Module {

    val io = IO(new Bundle {
        val input: SInt = Input(SInt(constraints.bit_width.W))
        val input_valid: Bool = Input(Bool())

        val output: SInt = Output(SInt(constraints.bit_width.W))
        val output_valid: Bool = Output(Bool())
        val input_ready: Bool = Output(Bool())

        val dbg_state: UInt = Output(UInt(3.W))
        val dbg_init: Bool = Output(Bool())
        val dbg_comp: Bool = Output(Bool())
        val dbg_idx: UInt = Output(UInt(constraints.order_width.W))
    })

    // States
    val idle :: init :: compute :: Nil = Enum(3)
    val current_state: UInt = RegInit(idle)

    // Module Instantiations
    val constantSelect: ConstantSelect = Module(new ConstantSelect(constraints))
    val taylorExpansion: TaylorExpansion = Module(new TaylorExpansion(constraints))

    // registers
    val input_ready_reg: Bool = RegInit(true.B)
    val output_valid_reg: Bool = RegInit(false.B)
    val input_reg: SInt = RegInit(0.S(constraints.bit_width.W))
    val m_order_idx: UInt = RegInit(0.U(constraints.order_width.W))
    val m_order_max: UInt = RegInit(constraints.order_of_approx.U(constraints.order_width.W))

    val initialize_taylor_reg: Bool = RegInit(false.B)
    val compute_enable_taylor_reg: Bool = RegInit(false.B)

    // state transitions
    switch (current_state) {
        is (idle) {
            when(io.input_valid && input_ready_reg) {
                current_state := init
            } .otherwise {
                current_state := idle
            }
        }
        is (init) {
            current_state := compute
        }
        is (compute) {
            //            when (input_ready_reg) {
            when (m_order_idx === m_order_max) {
                current_state := idle
            } .otherwise {
                current_state := compute
            }
        }
    }

    // state behavior
    switch (current_state) {
        is (idle) {
            input_ready_reg := true.B
            output_valid_reg := true.B
            input_reg := input_reg
            m_order_idx := 0.U
            initialize_taylor_reg := false.B
            compute_enable_taylor_reg := false.B
        }
        is (init) {
            input_ready_reg := false.B
            output_valid_reg := false.B
            input_reg := io.input
            m_order_idx := 0.U
            initialize_taylor_reg := true.B
            compute_enable_taylor_reg := false.B
        }
        is (compute) {
            input_ready_reg := false.B
            output_valid_reg := false.B
            input_reg := input_reg
            m_order_idx := m_order_idx + 1.U
            initialize_taylor_reg := false.B
            compute_enable_taylor_reg := true.B
        }
    }

    // internal wires
    constantSelect.io.x := input_reg
    constantSelect.io.order_idx := m_order_idx

    taylorExpansion.io.mrn := constantSelect.io.m_select
//    taylorExpansion.io.xa := Mux(constantSelect.io.sel, io.input, io.input + constantSelect.io.a_select)
    taylorExpansion.io.xa := io.input + constantSelect.io.a_select
    taylorExpansion.io.compute_enable := compute_enable_taylor_reg
    taylorExpansion.io.initialize := initialize_taylor_reg

    // Outgoing Wires
    io.input_ready := input_ready_reg
    io.output_valid := output_valid_reg
    io.output := taylorExpansion.io.output

    // debug wires
    io.dbg_state := current_state
    io.dbg_comp := compute_enable_taylor_reg
    io.dbg_init := initialize_taylor_reg
    io.dbg_idx := m_order_idx
}


object GenerateVerilog extends App {

    //// User Setup
    // Module Constraint Parameters
    val integerWidth: Int = 5
    val rationalWidth: Int = 10
    val numberOfInnerRegions: Int = 8
    val orderOfTaylorApproximations: Int = 2

    // Generator Parameters
    val target_directory: String = "generated/"
    val output_file_name: String = "SPT-%d.%d-%dRegions-Order%d".format(
        integerWidth, rationalWidth, numberOfInnerRegions, orderOfTaylorApproximations
    )

    //// Module Generation
    val constraints: SPTConstraints = new SPTConstraints(integerWidth, rationalWidth,
        numberOfInnerRegions, orderOfTaylorApproximations)
    (new ChiselStage).emitVerilog(
        new SPT(constraints),
        Array("--target-dir", target_directory, "--output-file", output_file_name)
    )
}