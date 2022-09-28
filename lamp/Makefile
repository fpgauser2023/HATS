.PHONY: help

help::
	$(ECHO) "Makefile Usage:"
	$(ECHO) "  make all TARGET=<sw_emu/hw_emu/hw> DEVICE=<FPGA platform> HOST_ARCH=<aarch32/aarch64/x86> SYSROOT=<sysroot_path> USER_KRNL=<user_krnl_name> USER_KRNL_MODE=<rtl/hls>"
	$(ECHO) "      Command to generate the design for specified Target and Shell."
	$(ECHO) "      By default, HOST_ARCH=x86. HOST_ARCH and SYSROOT is required for SoC shells"
	$(ECHO) ""
	$(ECHO) "  make clean "
	$(ECHO) "      Command to remove the generated non-hardware files."
	$(ECHO) ""
	$(ECHO) "  make cleanall"
	$(ECHO) "      Command to remove all the generated files."
	$(ECHO) ""
	$(ECHO) "  make sd_card TARGET=<sw_emu/hw_emu/hw> DEVICE=<FPGA platform> HOST_ARCH=<aarch32/aarch64/x86> SYSROOT=<sysroot_path>"
	$(ECHO) "      Command to prepare sd_card files."
	$(ECHO) "      By default, HOST_ARCH=x86. HOST_ARCH and SYSROOT is required for SoC shells"
	$(ECHO) ""
	$(ECHO) "  make check TARGET=<sw_emu/hw_emu/hw> DEVICE=<FPGA platform> HOST_ARCH=<aarch32/aarch64/x86> SYSROOT=<sysroot_path>"
	$(ECHO) "      Command to run application in emulation."
	$(ECHO) "      By default, HOST_ARCH=x86. HOST_ARCH and SYSROOT is required for SoC shells"
	$(ECHO) ""
	$(ECHO) "  make build TARGET=<sw_emu/hw_emu/hw> DEVICE=<FPGA platform> HOST_ARCH=<aarch32/aarch64/x86> SYSROOT=<sysroot_path>"
	$(ECHO) "      Command to build xclbin application."
	$(ECHO) "      By default, HOST_ARCH=x86. HOST_ARCH and SYSROOT is required for SoC shells"
	$(ECHO) ""

COMMON_REPO = ./
PWD = $(shell readlink -f .)
ABS_COMMON_REPO = $(shell readlink -f $(COMMON_REPO))

TARGET := hw
HOST_ARCH := x86
SYSROOT :=
DEVICE ?= xilinx_u280_xdma_201920_3
VITIS_PLATFORM := ${DEVICE}


XCLBIN_NAME = network
KRNL_1 := network_krnl
KRNL_2 := ${USER_KRNL}
KRNL_3 := cmac_krnl

USER_KRNL_MODE ?= rtl

include ./utils.mk
POSTSYSLINKTCL ?= $(shell readlink -f ./scripts/post_sys_link.tcl)
CONFIGLINKTCL ?= $(shell readlink -f ./scripts/compile.cfg)

IPREPOPATH ?= ./build/fpga-network-stack/iprepo

XSA := $(call device2xsa, $(DEVICE))
TEMP_DIR := ./_x.$(TARGET).$(XSA)
BUILD_DIR := ./build_dir.$(TARGET).$(XSA)

VPP := $(XILINX_VITIS)/bin/v++
SDCARD := sd_card

#Include Libraries
include $(ABS_COMMON_REPO)/includes/opencl/opencl.mk
include $(ABS_COMMON_REPO)/includes/xcl2/xcl2.mk
CXXFLAGS += $(xcl2_CXXFLAGS)
LDFLAGS += $(xcl2_LDFLAGS)
HOST_SRCS += $(xcl2_SRCS)
include config_ip.mk

CXXFLAGS += $(opencl_CXXFLAGS) -Wall -O0 -g -std=gnu++14
CXXFLAGS +=  -DVITIS_PLATFORM=$(VITIS_PLATFORM)
LDFLAGS += $(opencl_LDFLAGS)

# Host compiler global settings
#CXXFLAGS += -fmessage-length=0
#LDFLAGS += -lrt -lstdc++

#ifneq ($(HOST_ARCH), x86)
#  LDFLAGS += --sysroot=$(SYSROOT)
#endif

# Kernel compiler global settings
CLFLAGS += -t $(TARGET) --platform $(DEVICE) --save-temps #--config $(CONFIGLINKTCL)


SIGMOID := spt
SIGMOID_PATH := $(TEMP_DIR)/sigmoid_$(SIGMOID).xo

clean:
	-rm -rf rm xo_release/packaged_kernel*
	-rm bit_gen/vivado*
	-rm -rf _x/
	-rm -rf _x.hw.xilinx_u280_xdma_201920_3/
	-rm -rf xo_release/tmp_kernel_pack_DPUCAHX8H_*
	-rm -rf bit_gen/*log
	-rm -rf bit_gen/*_imp
	-rm -rf bit_gen/*ltx
	-rm -rf bit_gen/*xclbin*
	-rm -rf bit_gen/.*swp
	-rm -rf bit_gen/.*swo
	-rm -rf bit_gen/.ipcache
	-rm -rf bit_gen/.Xil/
	-rm *.log
u280: $(SIGMOID_PATH) $(TEMP_DIR)/sigmoid_wrapper.xo
	cd vitis/DPUCAHX8H_u280/bit_gen/constraint  && cat opt_design.pre.common.u280.tcl HBM_RS_pblock.xdc v3e.u280.timing.slr0.xdc v3e.u280.physical.slr0.4ENGINE2M.xdc v3e.u280.timing.slr1.xdc v3e.u280.physical.slr1.5ENGINE2M.xdc v3e.u280.timing.slr2.xdc v3e.u280.physical.slr2.5ENGINE2M.xdc    > opt_design.pre.u280.tcl
	cd vitis/DPUCAHX8H_u280/bit_gen; v++ -t hw --platform xilinx_u280_xdma_201920_3 --save-temps --temp_dir u280_imp -l --config "./script/cons_u280.ini" -o u280.xclbin $(DPU_XO)/DPUCAHX8H_4ENGINE.xo  $(DPU_XO)/DPUCAHX8H_5ENGINE.xo  ../../../$(TEMP_DIR)/sigmoid.xo ../../../$(TEMP_DIR)/sigmoid_wrapper.xo
