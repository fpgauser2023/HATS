package Sigmoid.PiecewiseTaylor.Multicycle

import chiseltest.ChiselScalatestTester
import org.scalatest.flatspec.AnyFlatSpec
import chisel3._
import chiseltest._
import org.scalatest.matchers.should.Matchers

import java.io.{File, PrintWriter}
import scala.math.pow

class TestSPT extends AnyFlatSpec with ChiselScalatestTester with Matchers {
    behavior of "UFSTaylor"

    // Configure UFS-PT
    // NOTE: With less regions (<= 3), Increase the integer width (>= 10)
    val int_width = 5
    val rat_width = 10
    val number_of_regions = 8
    val order_of_approx = 2

    // Logging
    val fileaddr = "script/ufsres.dat"
    val logger = new PrintWriter(new File(fileaddr))
    val dbgMode = false

    // Testing Parameters
    val test_bound: BigDecimal = 7
    val test_resolution: BigDecimal = pow(2, -3)
    val clock_steps: Int = 10

    def log_stage_results(test_vector: BigDecimal, ufs_out_a: Double): Unit = {
        logger.write(test_vector + "," + ufs_out_a + "\n")
    }

    it should "do something" in {
        // test case body here
        val constraints_inst = new SPTConstraints(int_width, rat_width, number_of_regions, order_of_approx)
        test(new SPT(constraints_inst)) { c =>
            for (test_vector <- -test_bound until test_bound by test_resolution) {
                c.io.input.poke(constraints_inst.mapToFixedPoint(test_vector.toDouble).S(constraints_inst.bit_width.W))
                c.io.input_valid.poke(true.B)

                for (i <- 1 to 10) {
                    if (dbgMode) {
                        println(("Cycle: %d, Next State: %d, Input Valid: %d, Input Ready: %d, Output Valid: %d, " +
                            "Init: %d, Comp: %d, Debug Index: %d, f(%.3f) = %.3f").format(
                            i, c.io.dbg_state.peek().litValue, c.io.input_valid.peek().litValue,
                            c.io.input_ready.peek().litValue, c.io.output_valid.peek().litValue,
                            c.io.dbg_init.peek().litValue, c.io.dbg_comp.peek().litValue,
                            c.io.dbg_idx.peek().litValue,
                            c.io.input.peek().litValue.toDouble/pow(2,rat_width),
                            c.io.output.peek().litValue.toDouble/pow(2,rat_width)
                        ))
                    }
                    c.clock.step(1)
                    if (i == 1) {
                        c.io.input_valid.poke(false.B)
                    }
                }

                log_stage_results(test_vector,
                    c.io.output.peek().litValue.toDouble/pow(2,rat_width)
                )
            }
            logger.close()
        }
    }
}
