import Sigmoid.PiecewiseTaylor.Multicycle._
import UFS.PiecewiseLinear.Multicycle._
import UFS.PiecewiseLinear.Pipeline._
import UFS.PiecewiseTaylor.Multicycle._
import chisel3.stage.ChiselStage

object GenerateModule extends App {

    // Generation Parameters
    var implement: String = ""
    var fpi_format: Seq[Int] = Seq(5, 10)
    var numberOfRegions: Int = 2
    var orderOfApproximation: Int = 1

    args.sliding(2, 2).toList.collect {
        // long form
        case Array("--implementation", argImplement: String) => implement = argImplement
        case Array("--format", argFormat: String) => fpi_format = argFormat.split("\\.").map(x => x.toInt)
        case Array("--regions", argRegions: String) => numberOfRegions = argRegions.toInt
        case Array("--order", argOrder: String) => orderOfApproximation = argOrder.toInt
        // Short form
        case Array("-i", argImplement: String) => implement = argImplement
        case Array("-f", argFormat: String) => fpi_format = argFormat.split("\\.").map(x => x.toInt)
        case Array("-r", argRegions: String) => numberOfRegions = argRegions.toInt
        case Array("-o", argOrder: String) => orderOfApproximation = argOrder.toInt
        // default
        case _ => println("Warning: Unrecognized Parameter. Ignoring " + _)
    }

    // Meta
    val target_directory: String = "generated/"

    //// Module Generation
    implement match {
        case "ufspl-mc" =>
            val output_file_name: String = "%s-%d.%d-%dRegions".format(
                implement, fpi_format(0), fpi_format(1), numberOfRegions
            )
            (new ChiselStage).emitVerilog(
                new UFSPL_MC(new UFSPL_MC_Constraints(fpi_format(0), fpi_format(1), numberOfRegions)),
                Array("--target-dir", target_directory, "--output-file", output_file_name)
            )

        case "ufspl-pipe" =>
            val output_file_name: String = "%s-%d.%d-%dRegions".format(
                implement, fpi_format(0), fpi_format(1), numberOfRegions
            )
            (new ChiselStage).emitVerilog(
                new UFSPL_5SP(new UFSPL_5SP_Constraints(fpi_format(0), fpi_format(1), numberOfRegions)),
                Array("--target-dir", target_directory, "--output-file", output_file_name)
            )

        case "ufspt-mc" =>
            val output_file_name: String = "%s-%d.%d-%dRegions-Order%d".format(
                implement, fpi_format(0), fpi_format(1), numberOfRegions, orderOfApproximation
            )
            (new ChiselStage).emitVerilog(
                new UFSPT(new UFSPTConstraints(fpi_format(0), fpi_format(1), numberOfRegions, orderOfApproximation)),
                Array("--target-dir", target_directory, "--output-file", output_file_name)
            )

        case "spt-mc" =>
            val output_file_name: String = "%s-%d.%d-%dRegions-Order%d".format(
                implement, fpi_format(0), fpi_format(1), numberOfRegions, orderOfApproximation
            )
            (new ChiselStage).emitVerilog(
                new SPT(new SPTConstraints(fpi_format(0), fpi_format(1), numberOfRegions, orderOfApproximation)),
                Array("--target-dir", target_directory, "--output-file", output_file_name)
            )

        case _ =>
            throw new Exception(
                "Unrecognized Implementation. Available implementations include \"ufspl-mc\", \"ufspl-pipe\", \"ufspt-mc\", and \"spt-mc\"."
            )
    }
}
