open_project sigmoid_prj

open_solution "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 3.2 -name default

set_top sigmoid

add_files ./sigmoid.cpp

csynth_design
export_design -format xo -output ./sigmoid.xo

exit