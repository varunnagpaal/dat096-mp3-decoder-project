new_project -name leon3mp -folder . -createimpl_name precision
setup_design -manufacturer Xilinx -family SPARTAN-6 -part XC6SLX45csg324 -package csg324 -speed -3
set_input_dir .
add_input_file -format VHDL -work grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/version.vhd
add_input_file -format VHDL -work grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/config.vhd
add_input_file -format VHDL -work grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/stdlib.vhd
