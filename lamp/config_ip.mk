VIVADO := $(XILINX_VIVADO)/bin/vivado
HLS := $(XILINX_VITIS)/bin/vitis_hls

$(TEMP_DIR)/sigmoid_spt.xo: vitis/sigmoid_approximations/spt/sigmoid.xml vitis/sigmoid_approximations/spt/package_sigmoid.tcl gen_xo.tcl vitis/sigmoid_approximations/spt/hdl/*.v  vitis/sigmoid_approximations/spt/src/*.v
	mkdir -p $(TEMP_DIR)
	$(VIVADO) -mode batch -source gen_xo.tcl -tclargs $(TEMP_DIR)/sigmoid_spt.xo sigmoid_spt $(TARGET) $(DEVICE) $(XSA) vitis/sigmoid_approximations/spt/sigmoid.xml vitis/sigmoid_approximations/spt/package_sigmoid.tcl
	cp $(TEMP_DIR)/sigmoid_spt.xo $(TEMP_DIR)/sigmoid.xo

$(TEMP_DIR)/sigmoid_ufspl_multi.xo: vitis/sigmoid_approximations/ufspl_multi/sigmoid.xml vitis/sigmoid_approximations/ufspl_multi/package_sigmoid.tcl gen_xo.tcl vitis/sigmoid_approximations/ufspl_multi/hdl/*.v  vitis/sigmoid_approximations/ufspl_multi/src/*.v
	mkdir -p $(TEMP_DIR)
	$(VIVADO) -mode batch -source gen_xo.tcl -tclargs $(TEMP_DIR)/sigmoid_ufspl_multi.xo sigmoid_ufspl_multi $(TARGET) $(DEVICE) $(XSA) vitis/sigmoid_approximations/ufspl_multi/sigmoid.xml vitis/sigmoid_approximations/ufspl_multi/package_sigmoid.tcl
	cp $(TEMP_DIR)/sigmoid_ufspl_multi.xo $(TEMP_DIR)/sigmoid.xo

$(TEMP_DIR)/sigmoid_ufspl_pipelined.xo: vitis/sigmoid_approximations/ufspl_pipelined/sigmoid.xml vitis/sigmoid_approximations/ufspl_pipelined/package_sigmoid.tcl gen_xo.tcl vitis/sigmoid_approximations/ufspl_pipelined/hdl/*.v  vitis/sigmoid_approximations/ufspl_pipelined/src/*.v
	mkdir -p $(TEMP_DIR)
	$(VIVADO) -mode batch -source gen_xo.tcl -tclargs $(TEMP_DIR)/sigmoid_ufspl_pipelined.xo sigmoid_ufspl_pipelined $(TARGET) $(DEVICE) $(XSA) vitis/sigmoid_approximations/ufspl_pipelined/sigmoid.xml vitis/sigmoid_approximations/ufspl_pipelined/package_sigmoid.tcl
	cp $(TEMP_DIR)/sigmoid_ufspl_pipelined.xo $(TEMP_DIR)/sigmoid.xo

$(TEMP_DIR)/sigmoid_ufspt.xo: vitis/sigmoid_approximations/ufspt/sigmoid.xml vitis/sigmoid_approximations/ufspt/package_sigmoid.tcl gen_xo.tcl vitis/sigmoid_approximations/ufspt/hdl/*.v  vitis/sigmoid_approximations/ufspt/src/*.v
	mkdir -p $(TEMP_DIR)
	$(VIVADO) -mode batch -source gen_xo.tcl -tclargs $(TEMP_DIR)/sigmoid_ufspt.xo sigmoid_ufspt $(TARGET) $(DEVICE) $(XSA) vitis/sigmoid_approximations/ufspt/sigmoid.xml vitis/sigmoid_approximations/ufspt/package_sigmoid.tcl
	cp $(TEMP_DIR)/sigmoid_ufspt.xo $(TEMP_DIR)/sigmoid.xo


$(TEMP_DIR)/sigmoid_hls.xo: $(PWD)/hls/*.cpp $(PWD)/hls/make.tcl
	mkdir -p $(TEMP_DIR)
	$(HLS) -f $(PWD)/hls/make.tcl
	mv $(PWD)/sigmoid.xo $(TEMP_DIR)/sigmoid_hls.xo
	rm -rf sigmoid_prj

$(TEMP_DIR)/sigmoid_wrapper.xo: $(PWD)/vitis/sigmoid_wrapper_kernel/*.cpp
	mkdir -p $(TEMP_DIR)
	$(VPP) $(CLFLAGS) -c -k sigmoid_wrapper -o $(TEMP_DIR)/sigmoid_wrapper.xo --input_files $(PWD)/vitis/sigmoid_wrapper_kernel/*.cpp

