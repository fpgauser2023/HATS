package Sigmoid.PiecewiseTaylor.Multicycle

import chiseltest.ChiselScalatestTester
import org.scalatest.flatspec.AnyFlatSpec
import chisel3._
import chiseltest._
import org.scalatest.matchers.should.Matchers

import java.io.{File, PrintWriter}
import scala.io.{BufferedSource, Source}
import scala.math.pow

class TestSptMulticycle extends AnyFlatSpec with ChiselScalatestTester with Matchers {
    behavior of "UFSTaylor"

    // Module Parameters
    var fpiFormat: Seq[Int] = Seq(5, 10)
    var numberOfRegions: Int = 2
    var orderOfApproximation: Int = 1

    // Simulation Parameters
    var testBound: BigDecimal = 7
    var testResolution: BigDecimal = pow(2, -5)
    var clockSteps: Int = 10
    val logFile = "script/output.dat"
    val dbgMode = false

    // Extract Simulation Parameters
    val configFile = "simulation_config.txt"
    val configFileHandler: BufferedSource = Source.fromFile(configFile)

    configFileHandler.getLines
        .foreach(line => {
            line.split("=") match {
                case Array("FORMAT", argFormat: String) => fpiFormat = argFormat.split("\\.").map(x => x.toInt)
                case Array("REGIONS", argRegions: String) => numberOfRegions = argRegions.toInt
                case Array("ORDER", argOrder: String) => orderOfApproximation = argOrder.toInt
                case Array("TEST_BOUND", argBound: String) => testBound = argBound.toDouble
                case Array("TEST_RESOLUTION", argRes: String) => testResolution = pow(2, -argRes.toInt)
                // default
                case _ => println("Warning: Unrecognized Parameter. Ignoring " + _)
            }
        })
    configFileHandler.close()

    // Setting up the simulation
    val logFileHandler = new PrintWriter(new File(logFile))
    val constraints: SPTConstraints = new SPTConstraints(fpiFormat(0), fpiFormat(1), numberOfRegions, orderOfApproximation)
    logFileHandler.write("$\\widetilde{\\sigma}_{S-PT}(x)$ (Multicycle) -- I=%d, F=%d, R=%d, d=%d\n".format(fpiFormat(0),fpiFormat(1),numberOfRegions,orderOfApproximation))

    def log_stage_results(test_vector: BigDecimal, ufs_out_a: Double): Unit = {
        logFileHandler.write(test_vector + "," + ufs_out_a + "\n")
    }

    it should "do something" in {
        // test case body here
        test(new SPT(constraints)) { c =>
            for (test_vector <- -testBound until testBound by testResolution) {
                c.io.input.poke(constraints.mapToFixedPoint(test_vector.toDouble).S(constraints.bit_width.W))
                c.io.input_valid.poke(true.B)

                for (i <- 1 to 10) {
                    if (dbgMode) {
                        println(("Cycle: %d, Next State: %d, Input Valid: %d, Input Ready: %d, Output Valid: %d, " +
                            "Init: %d, Comp: %d, Debug Index: %d, f(%.3f) = %.3f").format(
                            i, c.io.dbg_state.peek().litValue, c.io.input_valid.peek().litValue,
                            c.io.input_ready.peek().litValue, c.io.output_valid.peek().litValue,
                            c.io.dbg_init.peek().litValue, c.io.dbg_comp.peek().litValue,
                            c.io.dbg_idx.peek().litValue,
                            c.io.input.peek().litValue.toDouble/pow(2,fpiFormat(1)),
                            c.io.output.peek().litValue.toDouble/pow(2,fpiFormat(1))
                        ))
                    }
                    c.clock.step(1)
                    if (i == 1) {
                        c.io.input_valid.poke(false.B)
                    }
                }

                log_stage_results(test_vector,
                    c.io.output.peek().litValue.toDouble/pow(2,fpiFormat(1))
                )
            }
            logFileHandler.close()
        }
    }
}
