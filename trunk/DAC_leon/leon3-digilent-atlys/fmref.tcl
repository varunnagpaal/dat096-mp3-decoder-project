# Formality script to read reference design
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/version.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/config.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/stdlib/stdlib.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/sparc/sparc.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/modgen/multlib.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/modgen/leaves.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/amba/amba.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/amba/devices.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/amba/defmst.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/amba/apbctrl.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/amba/ahbctrl.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/amba/dma2ahb_pkg.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/amba/dma2ahb.vhd
read_vhdl -r -libname grlib /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/grlib/amba/ahbmst.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/gencomp/gencomp.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/gencomp/netcomp.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/inferred/memory_inferred.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/inferred/ddr_inferred.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/inferred/mul_inferred.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/inferred/ddr_phy_inferred.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/inferred/ddrphy_datapath.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/dware/mul_dware.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/allclkgen.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/allddr.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/allmem.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/allmul.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/allpads.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/alltap.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/clkgen.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/clkmux.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/clkand.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/ddr_ireg.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/ddr_oreg.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/ddrphy.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram64.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram_2p.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram_dp.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncfifo.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/regfile_3p.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/tap.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/techbuf.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/nandtree.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/clkpad.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/clkpad_ds.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/inpad.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/inpad_ds.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/iodpad.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/iopad.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/iopad_ds.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/lvds_combo.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/odpad.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/outpad.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/outpad_ds.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/toutpad.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/skew_outpad.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/grspwc_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/grspwc2_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/grlfpw_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/grfpw_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/leon4_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/mul_61x61.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/cpu_disas_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/grusbhc_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/ringosc.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/ssrctrl_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/grpci2_phy_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/system_monitor.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/grgates.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/inpad_ddr.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/outpad_ddr.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/iopad_ddr.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram128bw.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram256bw.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram128.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram156bw.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/techmult.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/spictrl_net.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/scanreg.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncrambw.vhd
read_vhdl -r -libname techmap /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/techmap/maps/syncram_2pbw.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/comp/ethcomp.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/core/greth_pkg.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/core/eth_rstgen.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/core/eth_edcl_ahb_mst.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/core/eth_ahb_mst.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/core/greth_tx.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/core/greth_rx.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/core/grethc.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/wrapper/greth_gen.vhd
read_vhdl -r -libname eth /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/eth/wrapper/greth_gbit_gen.vhd
read_vhdl -r -libname opencores /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/opencores/occomp/occomp.vhd
read_vhdl -r -libname opencores /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/opencores/i2c/i2c_master_bit_ctrl.vhd
read_vhdl -r -libname opencores /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/opencores/i2c/i2c_master_byte_ctrl.vhd
read_vhdl -r -libname opencores /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/opencores/i2c/i2coc.vhd
read_verilog -r -libname opencores /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/opencores/spi/simple_spi_top.v
read_verilog -r -libname opencores /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/opencores/ac97/ac97_top.v
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/arith/arith.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/arith/mul32.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/arith/div32.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/memctrl/memctrl.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/memctrl/sdctrl.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/memctrl/sdctrl64.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/memctrl/sdmctrl.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/memctrl/srctrl.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/leon3.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmuconfig.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmuiface.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/libmmu.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/libiu.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/libcache.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/libproc3.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/cachemem.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmu_icache.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmu_dcache.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmu_acache.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmutlbcam.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmulrue.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmulru.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmutlb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmutw.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmu.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mmu_cache.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/cpu_disasx.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/iu3.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/grfpwx.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/mfpwx.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/grlfpwx.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/tbufmem.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/dsu3x.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/dsu3.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/proc3.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/leon3s.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/leon3cg.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/irqmp.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/grfpwxsh.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/grfpushwx.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/leon3/leon3sh.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/misc.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/rstgen.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/gptimer.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/ahbram.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/ahbdpram.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/ahbtrace.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/ahbtrace_mb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/ahbtrace_mmb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/grgpio.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/ahbstat.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/logan.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/apbps2.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/charrom_package.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/charrom.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/apbvga.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/svgactrl.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/wild.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/wild2ahb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/grsysmon.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/gracectrl.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/grgpreg.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/ahbmst2.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/ahb_mst_iface.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/misc/grgprbank.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/net/net.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/uart/uart.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/uart/libdcom.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/uart/apbuart.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/uart/dcom.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/uart/dcom_uart.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/uart/ahbuart.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/jtag/jtag.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/jtag/libjtagcom.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/jtag/jtagcom.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/jtag/ahbjtag.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/jtag/ahbjtag_bsd.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/jtag/bscanregs.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/jtag/bscanregsbd.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/greth/ethernet_mac.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/greth/greth.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/greth/greth_mb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/greth/greth_gbit.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/greth/greth_gbit_mb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/greth/grethm.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddrphy_wrap.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddrsp16a.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddrsp32a.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddrsp64a.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddrspa.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddr2spa.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddr2buf.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddr2spax.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddr2spax_ahb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/ddr/ddr2spax_ddr.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/i2c/i2c.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/i2c/i2cmst.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/i2c/i2cmst_gen.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/i2c/i2cslv.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/i2c/i2c2ahbx.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/i2c/i2c2ahb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/i2c/i2c2ahb_apb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/spi/spi.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/spi/spimctrl.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/spi/spictrlx.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/spi/spictrl.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/spi/spi2ahbx.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/spi/spi2ahb.vhd
read_vhdl -r -libname gaisler /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/gaisler/spi/spi2ahb_apb.vhd
read_vhdl -r -libname esa /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/esa/memoryctrl/memoryctrl.vhd
read_vhdl -r -libname esa /chalmers/sw/unsup64/grlib-gpl-1.1.0-b4113/lib/esa/memoryctrl/mctrl.vhd
