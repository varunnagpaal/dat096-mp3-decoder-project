::****************************************************************************
:: (c) Copyright 2009 Xilinx, Inc. All rights reserved.
::
:: This file contains confidential and proprietary information
:: of Xilinx, Inc. and is protected under U.S. and
:: international copyright and other intellectual property
:: laws.
::
:: DISCLAIMER
:: This disclaimer is not a license and does not grant any
:: rights to the materials distributed herewith. Except as
:: otherwise provided in a valid license issued to you by
:: Xilinx, and to the maximum extent permitted by applicable
:: law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
:: WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
:: AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
:: BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
:: INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
:: (2) Xilinx shall not be liable (whether in contract or tort,
:: including negligence, or under any other theory of
:: liability) for any loss or damage of any kind or nature
:: related to, arising under or in connection with these
:: materials, including for any direct, or any indirect,
:: special, incidental, or consequential loss or damage
:: (including loss of data, profits, goodwill, or any type of
:: loss or damage suffered as a result of any action brought
:: by a third party) even if such damage or loss was
:: reasonably foreseeable or Xilinx had been advised of the
:: possibility of the same.
::
:: CRITICAL APPLICATIONS
:: Xilinx products are not designed or intended to be fail-
:: safe, or for use in any application requiring fail-safe
:: performance, such as life-support or safety devices or
:: systems, Class III medical devices, nuclear facilities,
:: applications related to the deployment of airbags, or any
:: other applications that could lead to death, personal
:: injury, or severe property or environmental damage
:: (individually and collectively, "Critical
:: Applications"). Customer assumes the sole risk and
:: liability of any use of Xilinx products in Critical
:: Applications, subject only to applicable laws and
:: regulations governing limitations on product liability.
::
:: THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
:: PART OF THIS FILE AT ALL TIMES.
::
::****************************************************************************
::   ____  ____
::  /   /\/   /
:: /___/  \  /    Vendor                : Xilinx
:: \   \   \/     Version               : 3.7
::  \   \         Application           : MIG
::  /   /         Filename              : rem_files.bat
:: /___/   /\     Date Last Modified    : $Date: 2010/10/05 16:42:49 $
:: \   \  /  \    Date Created          : Fri Feb 06 2009
::  \___\/\___\
::
:: Device            : Spartan-6
:: Design Name       : DDR/DDR2/DDR3/LPDDR
:: Purpose           : Batch file to remove files generated from Synplicity 
::                     and ISE
:: Reference         :
:: Revision History  :
::****************************************************************************

@echo off
IF EXIST "../synth/rev_1" rmdir /S /Q "../synth/rev_1" 

IF EXIST _ngo rmdir /S /Q _ngo
IF EXIST tmp rmdir /S /Q tmp
IF EXIST _xmsgs rmdir /S /Q _xmsgs
IF EXIST xlnx_auto_0_xdb rmdir /S /Q xlnx_auto_0_xdb
IF EXIST icon_xdb rmdir /S /Q icon_xdb
IF EXIST ila_xdb rmdir /S /Q ila_xdb
IF EXIST vio_xdb rmdir /S /Q vio_xdb

IF EXIST vio_xmdf.tcl del /F /Q vio_xmdf.tcl
IF EXIST vio_readme.txt del /F /Q vio_readme.txt
IF EXIST vio_flist.txt del /F /Q vio_flist.txt
IF EXIST vio.xise del /F /Q vio.xise
IF EXIST vio.xco del /F /Q vio.xco
IF EXIST vio.ngc del /F /Q vio.ngc
IF EXIST vio.ise del /F /Q vio.ise
IF EXIST vio.gise del /F /Q vio.gise
IF EXIST vio.cdc del /F /Q vio.cdc

IF EXIST coregen.cgc del /F /Q coregen.cgc
IF EXIST coregen.cgp del /F /Q coregen.cgp
IF EXIST coregen.log del /F /Q coregen.log
IF EXIST ila.cdc del /F /Q ila.cdc
IF EXIST ila.gise del /F /Q ila.gise
IF EXIST ila.ise del /F /Q ila.ise
IF EXIST ila.ngc del /F /Q ila.ngc
IF EXIST ila.xco del /F /Q ila.xco
IF EXIST ila.xise del /F /Q ila.xise
IF EXIST ila_flist.txt del /F /Q ila_flist.txt
IF EXIST ila_readme.txt del /F /Q ila_readme.txt
IF EXIST ila_xmdf.tcl del /F /Q ila_xmdf.tcl

IF EXIST icon.asy del /F /Q icon.asy
IF EXIST icon.gise del /F /Q icon.gise
IF EXIST icon.ise del /F /Q icon.ise
IF EXIST icon.ncf del /F /Q icon.ncf
IF EXIST icon.ngc del /F /Q icon.ngc
IF EXIST icon.xco del /F /Q icon.xco
IF EXIST icon.xise del /F /Q icon.xise
IF EXIST icon_flist.txt del /F /Q icon_flist.txt
IF EXIST icon_readme.txt del /F /Q icon_readme.txt
IF EXIST icon_xmdf.tcl del /F /Q icon_xmdf.tcl

IF EXIST proj_1.prd del /F /Q proj_1.prd
IF EXIST proj_1.prj del /F /Q proj_1.prj
IF EXIST ise_flow_results.txt del /F /Q ise_flow_results.txt
IF EXIST stdout.log del /F /Q stdout.log
IF EXIST mig_37.ngc del /F /Q mig_37.ngc
IF EXIST mig_37.ngo del /F /Q mig_37.ngo
IF EXIST netlist.lst del /F /Q netlist.lst
IF EXIST mig_37_xst.xrpt del /F /Q mig_37_xst.xrpt
IF EXIST mig_37.bld del /F /Q mig_37.bld
IF EXIST mig_37.ngd del /F /Q mig_37.ngd
IF EXIST mig_37_ngdbuild.xrpt del /F /Q mig_37_ngdbuild.xrpt
IF EXIST mig_37_map.map del /F /Q mig_37_map.map
IF EXIST mig_37_map.mrp del /F /Q mig_37_map.mrp
IF EXIST mig_37_map.ngm del /F /Q mig_37_map.ngm
IF EXIST mig_37.pcf del /F /Q mig_37.pcf
IF EXIST mig_37_map.ncd del /F /Q mig_37_map.ncd
IF EXIST mig_37_map.xrpt del /F /Q mig_37_map.xrpt
IF EXIST mig_37_summary.xml del /F /Q mig_37_summary.xml
IF EXIST mig_37_usage.xml del /F /Q mig_37_usage.xml
IF EXIST mig_37.ncd del /F /Q mig_37.ncd
IF EXIST mig_37.par del /F /Q mig_37.par
IF EXIST mig_37.xpi del /F /Q mig_37.xpi
IF EXIST mig_37.ptwx del /F /Q mig_37.ptwx
IF EXIST mig_37.pad del /F /Q mig_37.pad
IF EXIST mig_37.unroutes del /F /Q mig_37.unroutes
IF EXIST mig_37_pad.csv del /F /Q mig_37_pad.csv
IF EXIST mig_37_pad.txt del /F /Q mig_37_pad.txt
IF EXIST mig_37_par.xrpt del /F /Q mig_37_par.xrpt
IF EXIST mig_37.twx del /F /Q mig_37.twx
IF EXIST mig_37.bgn del /F /Q mig_37.bgn
IF EXIST mig_37.twr del /F /Q mig_37.twr
IF EXIST mig_37.drc del /F /Q mig_37.drc
IF EXIST mig_37_bitgen.xwbt del /F /Q mig_37_bitgen.xwbt
IF EXIST mig_37.bit del /F /Q mig_37.bit
IF EXIST mig_37.log del /F /Q mig_37.log

IF EXIST par_usage_statistics.html del /F /Q par_usage_statistics.html
IF EXIST usage_statistics_webtalk.html del /F /Q usage_statistics_webtalk.html
IF EXIST webtalk.log del /F /Q webtalk.log
IF EXIST device_usage_statistics.html del /F /Q device_usage_statistics.html

@echo on
