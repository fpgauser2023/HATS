package UFS.PiecewiseLinear.Pipeline

import chisel3._
import chiseltest._
import org.scalatest._
import org.scalatest.matchers.should.Matchers

import java.io._
import scala.io.{BufferedSource, Source}
import scala.math.pow


class TestUfsplPipeline extends FlatSpec with ChiselScalatestTester with Matchers {
    behavior of "UFSLinear"

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
    val constraints: UFSPL_5SP_Constraints = new UFSPL_5SP_Constraints(fpiFormat(0), fpiFormat(1), numberOfRegions)
    logFileHandler.write("$\\widetilde{\\sigma}_{UFS-PL}(x)$ (Pipeline) -- I=%d, F=%d, R=%d\n".format(fpiFormat(0),fpiFormat(1),numberOfRegions))

    def log_stage_results(test_vector: BigDecimal, ufs_out_a: Double): Unit = {
        logFileHandler.write(test_vector + "," + ufs_out_a + "\n")
    }

    it should "do something" in {
        var clock_cycle: Int = 0
        // test case body here
        test(new UFSPL_5SP(constraints)) { c =>
            for (test_vector <- -testBound until testBound by testResolution) {
                c.io.input.poke(constraints.mapToFixedPoint(test_vector.toDouble).S(constraints.bit_width.W))

                if (clock_cycle % 4 == 0) {
                    c.io.input_valid.poke(true.B)
                    c.io.input_last.poke(true.B)
                } else {
                    c.io.input_valid.poke(false.B)
                    c.io.input_last.poke(false.B)
                }

                if (dbgMode) {
                    println(("%05d: Input Valid: %d, Input Ready: %d, Input Last: %d, " +
                        "Output Valid: %d, Output Last: %d, f(%.3f) = %.3f").format(
                        clock_cycle, c.io.input_valid.peek().litValue, c.io.input_ready.peek().litValue,
                        c.io.input_last.peek().litValue, c.io.output_valid.peek().litValue,
                        c.io.output_last.peek().litValue,
                        c.io.input.peek().litValue.toDouble/pow(2,fpiFormat(1)),
                        c.io.output.peek().litValue.toDouble/pow(2,fpiFormat(1))
                    ))
                }
                c.clock.step(1)
                clock_cycle = clock_cycle + 1
                log_stage_results(test_vector,
                    c.io.output.peek().litValue.toDouble/pow(2,fpiFormat(1))
                )
            }
            logFileHandler.close()
        }
    }
}

//class TestBoundarySelect extends FlatSpec with ChiselScalatestTester with Matchers {
//    behavior of "BoundarySelect"
//    // Constraints
//    val int_width = 20
//    val rat_width = 20
//    val R = 3
//
//    // Logging
//    val fileaddr = "script/ufsres.dat"
//    val logger = new PrintWriter(new File(fileaddr))
//
//    // Testing
//    val test_bound: BigDecimal = 10.0
//    val test_resolution: BigDecimal = pow(2, -5)
//
//    def logResult(test_vector: BigDecimal, result: Double): Unit = {
//        println("BoundarySelect( %f ) = %f -- %b".format(test_vector, result))
//        logger.write("%f,%f\n".format(test_vector, result))
//    }
//
//    it should "do something" in {
//        // test case body here
//        val constraints_inst = new UFSPL_5SP_Constraints(int_width, rat_width, R)
//        test(new BoundarySelect(constraints_inst)) { c =>
//            // start at the negative test_bound and iterate till the positive testing_bound
//            for (test_vector <- -test_bound until test_bound by test_resolution) {
//                c.io.x.poke(constraints_inst.mapToFixedPoint(test_vector.toDouble).S(constraints_inst.bit_width.W))
//                c.clock.step(5)
//                logResult(test_vector, c.io.idx.peek().litValue.toDouble)
//            }
//
//            logger.close()
//        }
//    }
//}
//
//
//class TestConstantSelect extends FlatSpec with ChiselScalatestTester with Matchers {
//    behavior of "ConstantSelect"
//    // Constraints
//    val int_width = 20
//    val rat_width = 20
//
//    // Logging
//    val fileaddr = "script/ufsres.dat"
//    val logger = new PrintWriter(new File(fileaddr))
//
//    // Testing
//    val test_bound: BigDecimal = 10.0
//    val test_resolution: BigDecimal = pow(2, -5)
//
//    def logResult(test_vector: BigDecimal, a: Double, m: Double, b: Double): Unit = {
//        println("BoundarySelect( %f ) = a= %f, m= %f, b= %f".format(test_vector, a, m, b))
////        logger.write("%f,%f\n".format(test_vector, result))
//    }
//
//    it should "do something" in {
//        // test case body here
//        val constraints_inst = new UFSPL_5SP_Constraints(int_width, rat_width, 2)
//        test(new ConstantSelect(constraints_inst)) { c =>
//            // start at the negative test_bound and iterate till the positive testing_bound
//            for (test_vector <- -test_bound until test_bound by test_resolution) {
//                c.io.x.poke(constraints_inst.mapToFixedPoint(test_vector.toDouble).S(constraints_inst.bit_width.W))
//                c.clock.step(5)
//                logResult(test_vector,
//                    c.io.a_select.peek().litValue.toDouble/pow(2,rat_width),
//                    c.io.m_select.peek().litValue.toDouble/pow(2,rat_width),
//                    c.io.b_select.peek().litValue.toDouble/pow(2,rat_width)
//                )
//            }
//
//            logger.close()
//        }
//    }
//}