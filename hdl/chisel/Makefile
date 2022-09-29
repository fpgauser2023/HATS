
sim-ufspl-mc:
	sbt 'testOnly UFS.PiecewiseLinear.Multicycle.TestUfsplMulticycle'
	./script/plotter.py script/output.dat

sim-ufspl-pipe:
	sbt 'testOnly UFS.PiecewiseLinear.Pipeline.TestUfsplPipeline'
	./script/plotter.py script/output.dat

sim-ufspt-mc:
	sbt 'testOnly UFS.PiecewiseTaylor.Multicycle.TestUfsptMulticycle'
	./script/plotter.py script/output.dat

sim-spt-mc:
	sbt 'testOnly Sigmoid.PiecewiseTaylor.Multicycle.TestSptMulticycle'
	./script/plotter.py script/output.dat
