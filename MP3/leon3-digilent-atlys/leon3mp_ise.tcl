project new leon3mp.ise
project set family "Spartan6"
project set device XC6SLX45
project set speed -3
project set package csg324
puts "Adding files to project"
lib_vhdl new grlib
xfile add "/chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/version.vhd" -lib_vhdl grlib
puts "/chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/version.vhd"
xfile add "/chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/config.vhd" -lib_vhdl grlib
puts "/chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/config.vhd"
xfile add "/chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/stdlib.vhd" -lib_vhdl grlib
puts "/chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/stdlib.vhd"
