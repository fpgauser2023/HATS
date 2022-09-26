
UFS_SRC_DIR  =./src/main/scala/UFS
UFS_TEST_DIR =./src/test/scala/UFS

ufspl_mc:
	sbt 'runMain UFS.PiecewiseLinear.Multicycle.GenerateVerilog'

ufspl_mc_test: $(UFS_TEST_DIR) $(UFS_SRC_DIR)
	sbt 'testOnly UFS.PiecewiseLinear.Multicycle.TestLinear'
	./script/plotter.py script/ufsres.dat

ufspl_pipe:
	sbt 'runMain UFS.PiecewiseLinear.Pipeline.GenerateVerilog'

ufspl_pipe_test: $(UFS_TEST_DIR) $(UFS_SRC_DIR)
	sbt 'testOnly UFS.PiecewiseLinear.Pipeline.TestLinear'
	./script/plotter.py script/ufsres.dat

ufspt:
	sbt 'runMain UFS.PiecewiseTaylor.Multicycle.GenerateVerilog'

ufspt_test:
	sbt 'testOnly UFS.PiecewiseTaylor.Multicycle.TestTaylor'
	./script/plotter.py script/ufsres.dat

spt:
	sbt 'runMain Sigmoid.PiecewiseTaylor.Multicycle.GenerateVerilog'

spt_test:
	sbt 'testOnly Sigmoid.PiecewiseTaylor.Multicycle.TestSPT'
	./script/plotter.py script/ufsres.dat



#TFEN_SRC_DIR  =./src/main/scala/FES/TFEn/TFEnSigmoid.scala
#TFEN_TEST_DIR =./src/test/scala/FES/TFEn/fe_test.scala
#
#AFEN_SRC_DIR  =./src/main/scala/FES/AFEn/AFEnSigmoid.scala
#AFEN_TEST_DIR =./src/test/scala/FES/AFEn/fe_test.scala
#
#ufsdis: $(UFSDIS_SRC_DIR) $(UFSDIS_TEST_DIR)
#	sbt test
#
# UFS Multicycle Test
#sim_ufsmc: $(UFS_SRC_DIR)/Multicycle/UFSMulticycle.scala $(UFS_TEST_DIR)/Multicycle/UFSMulticycleTest.scala
#	sbt 'testOnly UFS.Multicycle.UFSMulticycleTest'
#	./script/plotter.py script/ufsres.dat
#
#ver_ufsmc: $(UFS_SRC_DIR) $(UFS_TEST_DIR)
#	sbt 'runMain UFS.Multicycle.UFSMulticycleVerilogGenerator'
#
#
## Ultrafast Sigmoid Simulation
#sim_ufs: $(UFS_SRC_DIR) $(UFS_TEST_DIR)
#	sbt 'testOnly UFS.UFSTest'
#	./script/plotter.py script/ufsres.dat
#
#ver_ufs: $(UFS_SRC_DIR) $(UFS_TEST_DIR)
#	sbt 'runMain UFS.UFSDriver'
#
#
## Multicycle FastExp-n Simulation
#sim_tfen: $(TFEN_SRC_DIR) $(TFEN_TEST_DIR)
#	sbt 'testOnly FES.TFEn.TestTFEnSigmoid'
#	./script/plotter.py script/feres.dat
#
#tfen_verilog:
#	sbt 'runMain FES.TFen.FEDriver'
#
#UnitAFEn: $(FEDIS_SRC_DIR) $(FEDIS_TEST_DIR)
#	sbt 'testOnly discretefe.TestUnitAFEn'
#
#afe512: $(FEDIS_SRC_DIR) $(FEDIS_TEST_DIR)
#	sbt 'testOnly discretefe.TestAFE512'
#
#
# Pipelined FastExp-n Simulation
#sim_afen: $(AFEN_TEST_DIR) $(AFEN_SRC_DIR)
#	sbt 'testOnly FES.AFEn.TestAFE512Sigmoid'
#	./script/plotter.py script/feareares.dat
#
#TestBoundarySelect: $(UFS_TEST_DIR) $(UFS_SRC_DIR)
#	sbt 'testOnly UFS.TestBoundarySelect'
#	./script/plotter.py script/ufsres.dat
#
#TestConstantSelect: $(UFS_TEST_DIR) $(UFS_SRC_DIR)
#	sbt 'testOnly UFS.TestConstantSelect'

#sigmoid: $(FEDIS_TEST_DIR) $(FEDIS_SRC_DIR)
#	sbt 'testOnly discretefe.TestSigmoid'
#
#pipeline_test: $(FEDIS_TEST_DIR) $(FEDIS_SRC_DIR)
#	sbt 'testOnly basic_chisel.TestPipelineChainOperator'
