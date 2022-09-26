package UFS.PiecewiseLinear.Multicycle

import chisel3.stage.ChiselStage
import chisel3.util.{OHToUInt, ShiftRegister}
import chisel3.{SInt, _}

import scala.math.{log10, pow, round}

class UFSPL_MC_Constraints(val int_width: Int, val rat_width: Int, val R: Int) { // , val totalRanges: Int

    // Total bits available in entire format.
    val bit_width: Int = int_width + rat_width

    // mapToFixedPoint helper variables
    val pos_bound: Int =  pow(2, bit_width - 1).toInt - 1
    val neg_bound: Int = -pow(2, bit_width - 1).toInt

    // UFS Constants
    val flt_0_935 = 0.935409070603099
    val flt_0_045 = 0.0458812946797165

    // derive fixed point representations of boundary, a, b, and m constants from R regions
    val flt_boundaries: Seq[Double] = generateBoundaries(R)
    val flt_a: Seq[Double] = generateAs(flt_boundaries)
    val flt_m: Seq[Double] = generateMs(flt_a)
    val flt_b: Seq[Double] = generateBs(flt_a)

    // Update flt_a to eliminate boundary values
    println("boundaries: " + flt_boundaries)
    println("flt_a: " + flt_a)
    println("flt_m: " + flt_m)
    println("flt_b: " + flt_b)

    // TODO: Find out if the use of .S here creates hardware components!!
    val fpi_boundaries: Seq[SInt] = flt_boundaries.map(x => mapToFixedPoint(x).S(bit_width.W))
    val fpi_a: Seq[SInt] = flt_a.map(x => mapToFixedPoint(-x).S(bit_width.W))
    val fpi_m: Seq[SInt] = flt_m.map(x => mapToFixedPoint(x).S(bit_width.W))
    val fpi_b: Seq[SInt] = flt_b.map(x => mapToFixedPoint(x).S(bit_width.W))

    val idx_width: Int = scala.math.ceil(log10(flt_boundaries.length+1)/log10(2)).toInt

//    println("idx_width: " + idx_width)

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
        if (R > 2) {
            val differenceBetweenBoundaries: BigDecimal = (3.4 + 3.4) / R
            val innerBoundaries = for (i <- BigDecimal(-3.4) to BigDecimal(3.4) by differenceBetweenBoundaries)
                yield  i.toDouble
            Seq(-6.0) ++ innerBoundaries ++ Seq(6.0)
        } else {
            Seq(-6, -3.4, 0, 3.4, 6)
        }
    }

    // generateAs: using the boundary sequence, calculate the midpoint
    // of two neighboring boundaries.
    def generateAs(boundaries: Seq[Double]): Seq[Double] = {
        val innerAs: Seq[Double] = for(i <- 1 to boundaries.length-3)
            yield (boundaries(i) + boundaries(i+1))/2
        Seq(0.0, 0.0) ++ innerAs ++ Seq(0.0, 0.0)
    }

    // generateMs: Using the midpoints, a, calculate the slope of UFS
    // at each midpoint.
    def generateMs(flt_a: Seq[Double]): Seq[Double] = {
        val flt_0_011: Double = flt_0_045 / 4
        val innerNegativeMs: Seq[Double] = for(i <- 2 until flt_a.length/2)
            yield 1.5/pow(2 - flt_a(i), 2)
        val innerPositiveMs: Seq[Double] = for(i <- flt_a.length/2 to flt_a.length-3)
            yield 1.5/pow(-flt_a(i) - 2, 2)
        Seq(0.0, flt_0_011) ++ innerNegativeMs ++ innerPositiveMs ++ Seq(flt_0_011, 0.0)
    }

    // generateBs: Using the midpoints, a, calculate the y-intercept
    // of UFS at each midpoint
    def generateBs(flt_a: Seq[Double]): Seq[Double] = {
        val flt_0_071: Double = (1-flt_0_935+(1.7*flt_0_045))/2
        val flt_0_929: Double = (1+flt_0_935-(1.7*flt_0_045))/2
        val innerNegativeBs: Seq[Double] = for(i <- 2 until flt_a.length/2)
            yield (-0.25*flt_a(i)-1)/(flt_a(i)-2)
        val innerPositiveBs: Seq[Double] = for(i <- flt_a.length/2 to flt_a.length-3)
            yield (1.25*flt_a(i)+1)/(2+flt_a(i))
        Seq(0.0, flt_0_071) ++ innerNegativeBs ++ innerPositiveBs ++ Seq(flt_0_929, 1.0)
    }
}

class CheckBoundary(val constraints: UFSPL_MC_Constraints) extends Module {

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

class BoundarySelect(val constraints: UFSPL_MC_Constraints) extends Module {

    val io = IO(new Bundle{
        val x: SInt = Input(SInt(constraints.bit_width.W))
//        val sel: Bool = Output(Bool())
        val idx: UInt = Output(UInt(constraints.idx_width.W))
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
    io.idx := OHToUInt(OHencodedIdx)
//    io.sel := OHencodedIdx.head | OHencodedIdx(1) | OHencodedIdx.last | OHencodedIdx(OHencodedIdx.length-2)

}

class ConstantSelect(val constraints: UFSPL_MC_Constraints) extends Module {

    val io = IO(new Bundle {
        val x: SInt = Input(SInt(constraints.bit_width.W))
//        val sel: Bool = Output(Bool())
        val a_select: SInt = Output(SInt(constraints.bit_width.W))
        val b_select: SInt = Output(SInt(constraints.bit_width.W))
        val m_select: SInt = Output(SInt(constraints.bit_width.W))
    })

    // Module Instantiations and Input Wire Assignments
    val boundarySelect: BoundarySelect = Module(new BoundarySelect(constraints))
    boundarySelect.io.x := io.x

    // Vector Instantiations
    val m_vector: Vec[SInt] = RegInit(VecInit(constraints.fpi_m)) //TODO: Should Reg(Vec) be replaced with Mem
    val b_vector: Vec[SInt] = RegInit(VecInit(constraints.fpi_b)) //TODO: Should Reg(Vec) be replaced with Mem
    val a_vector: Vec[SInt] = RegInit(VecInit(constraints.fpi_a)) //TODO: Should Reg(Vec) be replaced with Mem

    // Outgoing Wires
//    io.sel := boundarySelect.io.sel
    io.a_select := a_vector(boundarySelect.io.idx)
    io.b_select := b_vector(boundarySelect.io.idx)
    io.m_select := m_vector(boundarySelect.io.idx)

}

// PiecewiseLinear Module
class UFSPL_MC(val constraints: UFSPL_MC_Constraints) extends Module {

    val io = IO(new Bundle {
        val x: SInt = Input(SInt(constraints.bit_width.W))
        val o: SInt = Output(SInt(constraints.bit_width.W))
    })

    // Module Instantiations
    val constantSelect: ConstantSelect = Module(new ConstantSelect(constraints))

    // Register Instantiations
    val input_buffer: SInt = Reg(SInt(constraints.bit_width.W))
    val x_plus_a: SInt = Reg(SInt(constraints.bit_width.W))
    val c_times_x_plus_a: SInt = Reg(SInt(constraints.bit_width.W))
    val output_buffer: SInt = Reg(SInt(constraints.bit_width.W))

    // Internal Wiring
    input_buffer := io.x
    constantSelect.io.x := input_buffer
    x_plus_a := input_buffer + constantSelect.io.a_select
    c_times_x_plus_a := (x_plus_a * constantSelect.io.m_select) >> constraints.rat_width
    output_buffer := c_times_x_plus_a + constantSelect.io.b_select

    // Outgoing Wires
    io.o := output_buffer
}


//class XilinxCompatibleLinear(val constraints: UFSPL_MC_Constraints) extends Module {
//
//    val latency = 3
//
//    val io = IO(new Bundle {
//        val x: SInt = Input(SInt(constraints.bit_width.W))
//        val o: SInt = Output(SInt(constraints.bit_width.W))
//
//        val rdy_out: Bool = Output(Bool())
//
//        val valid_in: Bool = Input(Bool())
//        val valid_out: Bool = Output(Bool())
//
//        val last_in: Bool = Input(Bool())
//        val last_out: Bool = Output(Bool())
//    })
//
//    // Wire Instantiations
//    val outgoingValidWire: Bool = Wire(Bool())
//
//    // Module Instantiations
//    val linearModule: Linear = Module(new Linear(constraints))
//
//    // Registers
//    val rdy: Bool = RegInit(1.B)
//
//    // Ready Circuit
//    rdy := (outgoingValidWire | io.valid_in) +% rdy
//
//    // Wiring
//    linearModule.io.x := io.x
//    io.o := linearModule.io.o
//
//    outgoingValidWire := ShiftRegister(io.valid_in, latency)
//    io.valid_out := outgoingValidWire
//
//    io.last_out := ShiftRegister(io.last_in, latency)
//
//    io.rdy_out := rdy
//
//}


object GenerateVerilog extends App {

    //// User Setup
    // Module Constraint Parameters
    val integerWidth: Int = 5
    val rationalWidth: Int = 10
    val numberOfRegions: Int = 8

    // Generator Parameters
    val target_directory: String = "generated/"
    val output_file_name: String = "UFSPL_Multicycle-%d.%d-%dRegions".format(
        integerWidth, rationalWidth, numberOfRegions
    )

    //// Module Generation
    val constraints: UFSPL_MC_Constraints = new UFSPL_MC_Constraints(integerWidth, rationalWidth, numberOfRegions)
    (new ChiselStage).emitVerilog(
        new UFSPL_MC(constraints),
        Array("--target-dir", target_directory, "--output-file", output_file_name)
    )
}

//object GenerateXilinxCompatibleVerilog extends App {
//
//    //// User Setup
//    // Module Constraint Parameters
//    val integerWidth: Int = 5
//    val rationalWidth: Int = 10
//    val numberOfRegions: Int = 8
//
//    // Generator Parameters
//    val target_directory: String = "generated/"
//
//    //// Module Generation
//    val constraints: UFSLinearConstraints = new UFSLinearConstraints(integerWidth, rationalWidth, numberOfRegions)
//    (new ChiselStage).emitVerilog(
//        new XilinxCompatibleLinear(constraints),
//        Array("--target-dir", target_directory)
//    )
//}