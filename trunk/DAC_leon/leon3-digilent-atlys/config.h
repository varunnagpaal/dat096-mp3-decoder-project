/*
 * Automatically generated C config: don't edit
 */
#define AUTOCONF_INCLUDED
/*
 * Synthesis      
 */
#undef  CONFIG_SYN_INFERRED
#undef  CONFIG_SYN_STRATIX
#undef  CONFIG_SYN_STRATIXII
#undef  CONFIG_SYN_STRATIXIII
#undef  CONFIG_SYN_CYCLONEIII
#undef  CONFIG_SYN_ALTERA
#undef  CONFIG_SYN_ATC18
#undef  CONFIG_SYN_LATTICE
#undef  CONFIG_SYN_ECLIPSE
#undef  CONFIG_SYN_UMC
#undef  CONFIG_SYN_SPARTAN2
#undef  CONFIG_SYN_SPARTAN3
#undef  CONFIG_SYN_SPARTAN3E
#define CONFIG_SYN_SPARTAN6 1
#undef  CONFIG_SYN_VIRTEX
#undef  CONFIG_SYN_VIRTEXE
#undef  CONFIG_SYN_VIRTEX2
#undef  CONFIG_SYN_VIRTEX4
#undef  CONFIG_SYN_VIRTEX5
#undef  CONFIG_SYN_VIRTEX6
#undef  CONFIG_SYN_INFER_RAM
#undef  CONFIG_SYN_INFER_PADS
#undef  CONFIG_SYN_NO_ASYNC
#undef  CONFIG_SYN_SCAN
/*
 * Clock generation
 */
#undef  CONFIG_CLK_INFERRED
#undef  CONFIG_CLK_HCLKBUF
#undef  CONFIG_CLK_UT130HBD
#undef  CONFIG_CLK_ALTDLL
#undef  CONFIG_CLK_LATDLL
#undef  CONFIG_CLK_PRO3PLL
#undef  CONFIG_CLK_PRO3EPLL
#undef  CONFIG_CLK_PRO3LPLL
#undef  CONFIG_CLK_FUSPLL
#undef  CONFIG_CLK_LIB18T
#undef  CONFIG_CLK_RHUMC
#undef  CONFIG_CLK_CLKDLL
#define CONFIG_CLK_DCM 1
#define CONFIG_CLK_MUL (6)
#define CONFIG_CLK_DIV (12)
#undef  CONFIG_PCI_CLKDLL
#undef  CONFIG_CLK_NOFB
#undef  CONFIG_PCI_SYSCLK
#define CONFIG_LEON3 1
#define CONFIG_PROC_NUM (1)
/*
 * Processor            
 */
/*
 * Integer unit                                           
 */
#define CONFIG_IU_NWINDOWS (8)
#define CONFIG_IU_V8MULDIV 1
#define CONFIG_IU_MUL_LATENCY_2 1
#undef  CONFIG_IU_MUL_LATENCY_4
#undef  CONFIG_IU_MUL_LATENCY_5
#define CONFIG_IU_MUL_INFERRED 1
#undef  CONFIG_IU_MUL_MODGEN
#undef  CONFIG_IU_MUL_TECHSPEC
#undef  CONFIG_IU_MUL_DW
#define CONFIG_IU_BP 1
#define CONFIG_IU_SVT 1
#define CONFIG_NOTAG 1
#define CONFIG_IU_LDELAY (1)
#define CONFIG_IU_WATCHPOINTS (0)
#define CONFIG_PWD 1
#define CONFIG_IU_RSTADDR 00000
/*
 * Floating-point unit
 */
#undef  CONFIG_FPU_ENABLE
/*
 * Cache system
 */
#define CONFIG_ICACHE_ENABLE 1
#define CONFIG_ICACHE_ASSO1 1
#undef  CONFIG_ICACHE_ASSO2
#undef  CONFIG_ICACHE_ASSO3
#undef  CONFIG_ICACHE_ASSO4
#undef  CONFIG_ICACHE_SZ1
#undef  CONFIG_ICACHE_SZ2
#undef  CONFIG_ICACHE_SZ4
#define CONFIG_ICACHE_SZ8 1
#undef  CONFIG_ICACHE_SZ16
#undef  CONFIG_ICACHE_SZ32
#undef  CONFIG_ICACHE_SZ64
#undef  CONFIG_ICACHE_SZ128
#undef  CONFIG_ICACHE_SZ256
#undef  CONFIG_ICACHE_LZ16
#define CONFIG_ICACHE_LZ32 1
#define CONFIG_DCACHE_ENABLE 1
#define CONFIG_DCACHE_ASSO1 1
#undef  CONFIG_DCACHE_ASSO2
#undef  CONFIG_DCACHE_ASSO3
#undef  CONFIG_DCACHE_ASSO4
#undef  CONFIG_DCACHE_SZ1
#undef  CONFIG_DCACHE_SZ2
#define CONFIG_DCACHE_SZ4 1
#undef  CONFIG_DCACHE_SZ8
#undef  CONFIG_DCACHE_SZ16
#undef  CONFIG_DCACHE_SZ32
#undef  CONFIG_DCACHE_SZ64
#undef  CONFIG_DCACHE_SZ128
#undef  CONFIG_DCACHE_SZ256
#define CONFIG_DCACHE_LZ16 1
#undef  CONFIG_DCACHE_LZ32
#undef  CONFIG_DCACHE_SNOOP
#define CONFIG_CACHE_FIXED 0
/*
 * MMU
 */
#define CONFIG_MMU_ENABLE 1
#define CONFIG_MMU_COMBINED 1
#undef  CONFIG_MMU_SPLIT
#undef  CONFIG_MMU_REPARRAY
#define CONFIG_MMU_REPINCREMENT 1
#undef  CONFIG_MMU_I2
#undef  CONFIG_MMU_I4
#define CONFIG_MMU_I8 1
#undef  CONFIG_MMU_I16
#undef  CONFIG_MMU_I32
#define CONFIG_MMU_PAGE_4K 1
#undef  CONFIG_MMU_PAGE_8K
#undef  CONFIG_MMU_PAGE_16K
#undef  CONFIG_MMU_PAGE_32K
#undef  CONFIG_MMU_PAGE_PROG
/*
 * Debug Support Unit        
 */
#define CONFIG_DSU_ENABLE 1
#define CONFIG_DSU_ITRACE 1
#undef  CONFIG_DSU_ITRACESZ1
#define CONFIG_DSU_ITRACESZ2 1
#undef  CONFIG_DSU_ITRACESZ4
#undef  CONFIG_DSU_ITRACESZ8
#undef  CONFIG_DSU_ITRACESZ16
#define CONFIG_DSU_ATRACE 1
#undef  CONFIG_DSU_ATRACESZ1
#define CONFIG_DSU_ATRACESZ2 1
#undef  CONFIG_DSU_ATRACESZ4
#undef  CONFIG_DSU_ATRACESZ8
#undef  CONFIG_DSU_ATRACESZ16
/*
 * Fault-tolerance  
 */
/*
 * VHDL debug settings       
 */
#undef  CONFIG_IU_DISAS
#undef  CONFIG_DEBUG_PC32
/*
 * AMBA configuration
 */
#define CONFIG_AHB_DEFMST (0)
#define CONFIG_AHB_RROBIN 1
#define CONFIG_AHB_SPLIT 1
#define CONFIG_AHB_IOADDR FFF
#define CONFIG_APB_HADDR 800
#undef  CONFIG_AHB_MON
#undef  CONFIG_AHB_DTRACE
/*
 * Debug Link           
 */
#define CONFIG_DSU_UART 1
#define CONFIG_DSU_JTAG 1
#define CONFIG_DSU_ETH 1
#undef  CONFIG_DSU_ETHSZ1
#define CONFIG_DSU_ETHSZ2 1
#undef  CONFIG_DSU_ETHSZ4
#undef  CONFIG_DSU_ETHSZ8
#undef  CONFIG_DSU_ETHSZ16
#define CONFIG_DSU_IPMSB 8110
#define CONFIG_DSU_IPLSB 15E0
#define CONFIG_DSU_ETHMSB 200000
#define CONFIG_DSU_ETHLSB 000004
#undef  CONFIG_DSU_ETH_PROG
#undef  CONFIG_DSU_ETH_DIS
/*
 * Peripherals             
 */
/*
 * Memory controllers             
 */
/*
 * Leon2 memory controller        
 */
#define CONFIG_MCTRL_LEON2 1
#define CONFIG_MCTRL_8BIT 1
#undef  CONFIG_MCTRL_16BIT
#undef  CONFIG_MCTRL_5CS
#undef  CONFIG_MCTRL_SDRAM
/*
 * DDR2 SDRAM controller             
 */
#undef  CONFIG_DDR2SP
/*
 * Xilinx MIG DDR2 controller   
 */
#define CONFIG_MIG_DDR2 1
/*
 * On-chip RAM/ROM                 
 */
#undef  CONFIG_AHBROM_ENABLE
#undef  CONFIG_AHBRAM_ENABLE
/*
 * Ethernet             
 */
#define CONFIG_GRETH_ENABLE 1
#undef  CONFIG_GRETH_GIGA
#undef  CONFIG_GRETH_FIFO4
#define CONFIG_GRETH_FIFO8 1
#undef  CONFIG_GRETH_FIFO16
#undef  CONFIG_GRETH_FIFO32
#undef  CONFIG_GRETH_FIFO64
/*
 * UARTs, timers and irq control         
 */
#define CONFIG_UART1_ENABLE 1
#define CONFIG_UA1_FIFO1 1
#undef  CONFIG_UA1_FIFO2
#undef  CONFIG_UA1_FIFO4
#undef  CONFIG_UA1_FIFO8
#undef  CONFIG_UA1_FIFO16
#undef  CONFIG_UA1_FIFO32
#define CONFIG_IRQ3_ENABLE 1
#undef  CONFIG_IRQ3_SEC
#define CONFIG_GPT_ENABLE 1
#define CONFIG_GPT_NTIM (2)
#define CONFIG_GPT_SW (8)
#define CONFIG_GPT_TW (32)
#define CONFIG_GPT_IRQ (8)
#define CONFIG_GPT_SEPIRQ 1
#undef  CONFIG_GPT_WDOGEN
#define CONFIG_GRGPIO_ENABLE 1
#define CONFIG_GRGPIO_WIDTH (8)
#define CONFIG_GRGPIO_IMASK 0000
/*
 * SPI
 */
/*
 * SPI memory controller 
 */
#undef  CONFIG_SPIMCTRL
/*
 * SPI controller(s) 
 */
#undef  CONFIG_SPICTRL_ENABLE
/*
 * VHDL Debugging        
 */
#undef  CONFIG_DEBUG_UART
