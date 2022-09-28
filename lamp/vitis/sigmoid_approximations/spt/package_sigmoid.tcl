set path_to_packaged "./packaged_kernel"
set path_to_tmp_project "./tmp_kernel_pack"
variable loc [file normalize [info script]]

set projName kernel_pack
create_project -force $projName $path_to_tmp_project -part "xcu280-fsvh2892-2L-e"

add_files -norecurse [glob vitis/sigmoid_approximations/spt/hdl/*.v vitis/sigmoid_approximations/spt/src/*.v]
#add_files -norecurse [glob /home/zhenhao/vitis_network/build/fpga-network-stack/hls/toe/toe_prj/solution1/impl/ip/hdl/verilog/*.v]

set_property top sigmoid_axis_ip_v1_0 [current_fileset]
update_compile_order -fileset sources_1


update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
ipx::package_project -root_dir $path_to_packaged -vendor xilinx.com -library RTLKernel -taxonomy /KernelIP -import_files -set_current false
ipx::unload_core $path_to_packaged/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_project -directory $path_to_packaged $path_to_packaged/component.xml
set_property core_revision 1 [ipx::current_core]
foreach up [ipx::get_user_parameters] {
  ipx::remove_user_parameter [get_property NAME $up] [ipx::current_core]
}
set_property sdx_kernel true [ipx::current_core]
set_property sdx_kernel_type rtl [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::add_bus_interface ap_clk [ipx::current_core]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
ipx::add_port_map CLK [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]
set_property physical_name ap_clk [ipx::get_port_maps CLK -of_objects [ipx::get_bus_interfaces ap_clk -of_objects [ipx::current_core]]]



#TCP/IP interfaces
ipx::add_bus_interface s00_axis [ipx::current_core]
set_property interface_mode slave [ipx::get_bus_interfaces s00_axis -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces s00_axis -of_objects [ipx::current_core]]
ipx::associate_bus_interfaces -busif s00_axis -clock ap_clk [ipx::current_core]

ipx::add_bus_interface m00_axis [ipx::current_core]
set_property interface_mode master [ipx::get_bus_interfaces m00_axis -of_objects [ipx::current_core]]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [ipx::get_bus_interfaces m00_axis -of_objects [ipx::current_core]]
ipx::associate_bus_interfaces -busif m00_axis -clock ap_clk [ipx::current_core]


set_property xpm_libraries {XPM_CDC XPM_MEMORY XPM_FIFO} [ipx::current_core]
set_property supported_families { } [ipx::current_core]
set_property auto_family_support_level level_2 [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_project -delete
