clean:
	-rm -rf rm xo_release/packaged_kernel*
	-rm bit_gen/vivado*
	-rm -rf xo_release/tmp_kernel_pack_DPUCAHX8H_*
	-rm -rf bit_gen/*log
	-rm -rf bit_gen/*_imp
	-rm -rf bit_gen/*ltx
	-rm -rf bit_gen/*xclbin*
	-rm -rf bit_gen/.*swp
	-rm -rf bit_gen/.*swo
	-rm -rf bit_gen/.ipcache
	-rm -rf bit_gen/.Xil/
u280:
	cd ./bit_gen/constraint  && cat opt_design.pre.common.u280.tcl HBM_RS_pblock.xdc v3e.u280.timing.slr0.xdc v3e.u280.physical.slr0.4ENGINE2M.xdc v3e.u280.timing.slr1.xdc v3e.u280.physical.slr1.5ENGINE2M.xdc v3e.u280.timing.slr2.xdc v3e.u280.physical.slr2.5ENGINE2M.xdc    > opt_design.pre.u280.tcl
	cd ./bit_gen; v++ -t hw --platform xilinx_u280_xdma_201920_3 --save-temps --temp_dir u280_imp -l --config "./script/cons_u280.ini" -o u280.xclbin $(DPU_XO)/DPUCAHX8H_4ENGINE.xo  $(DPU_XO)/DPUCAHX8H_5ENGINE.xo  $(SIGMOID_ACCEL)/sigmoid.xo 
