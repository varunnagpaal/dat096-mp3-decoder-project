# GRLIB Makefile generated settings
set design leon3mp
set pnc 
set device 
set package 
set top_hdl 

### Project Settings
#
# The parameters in this section are for documentation purposes mostly
# and can be changed by the user without affecting synthesis results
# Multi-word strings (e.g. eASIC Corp) must be enwrapped in double
# quotes, so "eASIC Corp."

# project: string; Project name
set project "leon3"

# company: string; Company name
set company "gaisler"

# designer: string; Designer name
set designer ""

# email: string; Designer's email address
set email "${designer}@${company}.com"

# email_notification: enumerated [on,off]
# When 'on' CDB sends an email to the designer's email address
# with the status of the last run and the log file attached
set email_notification off


### Design
#
# The parameters in this section define the eASIC Structured ASIC
# the design will be implemented on 

# pnc: number; Part Number Code, unique project identifier
# provided by eASIC
#set pnc 50123

# design: string; Top Level name
#set design leon3mp

# device: enumerated [NX750,NX1500,NX2500,NX4000,NX5000]
# Device selects the eASIC Structured ASIC platform
#set device NX1500

# package: string; package for selected device
# 
#set package FC480

# device_type: enumerated [sl,vl]
# sl: SRAM configured Lookup table device
# vl: Via configured Lookup table device
set device_type sl

# technology; enumerated [std,hp]
# std: 1.2V standard device
# hp : 1.3V high performance device
set technology std


### Flow
#
# The parameters in this section provide various options
# to guide the synthesis flow

# fsm_optimization: enumerated [on,off]
# fsm_encoding    : enumerated [auto,binary,gray,one_hot]
# These parameters turn on/off Finite State Machine recoding with the
# method defined by 'fsm_encoding'.
# Turning on this option can result in smaller and/or faster FSM
# implementations, but may lead to formal verification errors
set fsm_optimization off
set fsm_encoding auto

# boolean_mapper: enumerated [on,off]
# Turn on/off Magma boolean mapper technology
# Turning on this option generally yields a smaller and faster design
set boolean_mapper on

# use_rtbuf: enumerated [on,off]
# Turn on/off long net buffering using high-drive buffers (rtbuf)
# Setting use_rtbuf to 'off' disables 'fix fj90 rtbuf'
set use_rtbuf on

# effort: enumerated [low,medium,high]; (area) synthesis effort
set effort medium

# timing_effort: enumerated [low,medium,high]; timing effort
set timing_effort medium

# timing_slack: real; initial positive timing slack target
set timing_slack 1n

# clock_effort: enumerated [low,high]
# Should be set to 'low' for 2008 Magma releases, can be set to 'high' for older releases
set clock_effort low

# utilization: real; area utilization
# Maximum area utilization during placement. Typical values range
# from 0.7 to 1.0. Lower values may improve timing or relax placement
# effort, but lead to less area efficient implementations.
set utilization 0.8

# clone_ff: enumerated [on,off]
# Turn on/off replication of flipflops to drive large loads.
# It is recommended to set this parameter to 'on'.
# Set it to 'off' if encountering formal verification issues.
set clone_ff on

# fanout_limit: integer;
# fanout_strict: enumerated [strict,noworse]
# Sets the maximum fanout per cell (fanout_limit) and how the
# synthesis tool resolves the fanout; always buffer if the load is
# higher than the fanout (strict), or only buffer if the load is
# higher than the fanout AND buffering doesn't affect timing (noworse)
set fanout_limit 10
set fanout_strict strict

# timing_paths: integer
# Sets the number of timing paths reported during the various timing
# analysis reports
set timing_paths 10


### Directories
#
# The parameters in this section set multiple directories.
# There should be no need to change any of the following parameters 

# proj_rootdir: string
# Sets the path to the project root, as seen from the 'run' directory
set proj_rootdir ../../..

# srcdir: string
# Sets the directory containing user files (e.g. design and constraints)
# This typically points to 'src'
set srcdir $proj_rootdir/src

# rtldir: string
# Sets the directory containing RTL files
# This typically points to 'src/rtl'
set rtldir $srcdir/rtl

# constraintsdir: string
# Sets the directory containing design constraints (.sdc, .pad) files
# This typically points to 'src/constraints'
set constraintsdir $srcdir/constraints

# snap: enumerated [on|off]
# Enables or disabled Magma synthesis snap-shot generation.
# snap must be on if the CDB 'start_at' option is to be used.
set snap on

# volcano_compression: enumerated [none,min,med,max]
# Sets the Magma library volcano compression level
set volcano_compression none


### Constraints
#
# The parameters in this section set/point to synthesis constraints

# pad_file: string
# Points to an eWizard generated file containing pad and macro placement commands
# Typically points to 'src/constraints/<design>.pad
set pad_file $constraintsdir/${design}.pad

# sdc_file: string
# Points to a user generated file containing timing constraints in
# Synopsys Design Constraints (sdc) format.
# Typically points to 'src/constraints/<design>.sdc
set sdc_file $constraintsdir/${design}.sdc

# verilog2k: enumerated [on|off]
# Enables/disabled Verilog2001 support
set verilog2k on

# undriven: enumerated [0,1,X,U,reset]
# Sets the physical synthesis tool's behaviour with regards to undriven
# pins. By default this is set to 'U', meaning leave undriven pins
# floating so they can be detected and fixed in RTL.
set undriven U

# topfile: string
# The name of the file containing the top level RTL module
#set topfile $rtldir/<top file>
#if {[regexp {\.v$} $topfile]} {set top_hdl verilog} else {set top_hdl vhdl}


### Design files
#
set includeList  {}
set defineList   {}
set netlistList  {}
set vhdllibList  {}
set read_netlist {}
set read_rtl     {}
set read_plan    {}

# GRLIB Makefile generated HDL list
set vhdlList {
{grlib  ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/stdlib/version.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/stdlib/config.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/stdlib/stdlib.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/sparc/sparc.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/sparc/sparc_disas.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/sparc/cpu_disas.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/modgen/multlib.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/modgen/leaves.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/amba/amba.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/amba/devices.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/amba/defmst.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/amba/apbctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/amba/ahbctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/amba/dma2ahb_pkg.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/grlib/amba/dma2ahb.vhd}
{techmap  ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/gencomp/gencomp.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/gencomp/netcomp.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/inferred/memory_inferred.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/inferred/ddr_inferred.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/inferred/mul_inferred.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/inferred/ddr_phy_inferred.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/dware/mul_dware.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/allclkgen.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/allddr.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/allmem.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/allmul.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/allpads.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/alltap.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/clkgen.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/clkmux.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/clkand.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/ddr_ireg.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/ddr_oreg.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/ddrphy.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/syncram.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/syncram64.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/syncram_2p.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/syncram_dp.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/syncfifo.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/regfile_3p.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/tap.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/techbuf.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/nandtree.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/clkpad.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/clkpad_ds.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/inpad.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/inpad_ds.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/iodpad.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/iopad.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/iopad_ds.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/lvds_combo.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/odpad.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/outpad.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/outpad_ds.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/toutpad.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/skew_outpad.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/grspwc_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/grspwc2_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/grlfpw_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/grfpw_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/leon4_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/mul_61x61.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/cpu_disas_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/grusbhc_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/ringosc.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/ssrctrl_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/system_monitor.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/grgates.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/inpad_ddr.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/outpad_ddr.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/iopad_ddr.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/syncram128bw.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/syncram128.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/syncram156bw.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/techmult.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/spictrl_net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/techmap/maps/scanreg.vhd}
{eth  ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/comp/ethcomp.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/core/greth_pkg.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/core/eth_rstgen.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/core/eth_edcl_ahb_mst.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/core/eth_ahb_mst.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/core/greth_tx.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/core/greth_rx.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/core/grethc.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/wrapper/greth_gen.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/eth/wrapper/greth_gbit_gen.vhd}
{opencores  ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/opencores/occomp/occomp.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/opencores/i2c/i2c_master_bit_ctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/opencores/i2c/i2c_master_byte_ctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/opencores/i2c/i2coc.vhd}
{gaisler  ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/arith/arith.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/arith/mul32.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/arith/div32.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/memctrl/memctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/memctrl/sdctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/memctrl/sdctrl64.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/memctrl/sdmctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/memctrl/srctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/memctrl/spimctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/leon3.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmuconfig.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmuiface.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/libmmu.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/libiu.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/libcache.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/libproc3.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/cachemem.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmu_icache.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmu_dcache.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmu_acache.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmutlbcam.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmulrue.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmulru.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmutlb.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmutw.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmu.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mmu_cache.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/cpu_disasx.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/iu3.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/grfpwx.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/mfpwx.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/grlfpwx.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/tbufmem.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/dsu3x.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/dsu3.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/proc3.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/leon3s.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/leon3cg.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/irqmp.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/grfpwxsh.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/grfpushwx.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/leon3/leon3sh.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/misc.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/rstgen.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/gptimer.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahbram.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahbdpram.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahbtrace.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahbtrace_mb.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahbtrace_mmb.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahbmst.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/grgpio.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahbstat.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/logan.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/apbps2.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/charrom_package.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/charrom.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/apbvga.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/svgactrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/i2cmst.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/i2cmst_gen.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/spictrlx.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/spictrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/i2cslv.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/wild.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/wild2ahb.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/grsysmon.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/gracectrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/grgpreg.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahbmst2.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/misc/ahb_mst_iface.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/net/net.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/uart/uart.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/uart/libdcom.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/uart/apbuart.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/uart/dcom.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/uart/dcom_uart.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/uart/ahbuart.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/jtag/jtag.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/jtag/libjtagcom.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/jtag/jtagcom.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/jtag/ahbjtag.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/jtag/ahbjtag_bsd.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/jtag/bscanregs.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/jtag/bscanregsbd.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/greth/ethernet_mac.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/greth/greth.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/greth/greth_mb.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/greth/greth_gbit.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/greth/greth_gbit_mb.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/greth/grethm.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddrphy_wrap.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddrsp16a.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddrsp32a.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddrsp64a.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddrspa.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddr2spa.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddr2buf.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddr2spax.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddr2spax_ahb.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/gaisler/ddr/ddr2spax_ddr.vhd}
{esa  ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/esa/memoryctrl/memoryctrl.vhd ../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/esa/memoryctrl/mctrl.vhd}
{work  ../../../../mig37/mig_37/user_design/rtl/iodrp_controller.vhd ../../../../mig37/mig_37/user_design/rtl/iodrp_mcb_controller.vhd ../../../../mig37/mig_37/user_design/rtl/mcb_raw_wrapper.vhd ../../../../mig37/mig_37/user_design/rtl/mcb_soft_calibration.vhd ../../../../mig37/mig_37/user_design/rtl/mcb_soft_calibration_top.vhd ../../../../mig37/mig_37/user_design/rtl/memc3_infrastructure.vhd ../../../../mig37/mig_37/user_design/rtl/memc3_wrapper.vhd ../../../../mig37/mig_37/user_design/rtl/mig_37.vhd ../../../../config.vhd ../../../../ahbrom.vhd ../../../../ahb2mig_sp601.vhd ../../../../leon3mp.vhd}
}
set verilogList {
../../../..//chalmers/users/goelb/chalmers/courses/vlsi-project/MP3_magnus/MP3/GRLIB_IDCT_DAC/lib/opencores/ac97/ac97_top.v
}
