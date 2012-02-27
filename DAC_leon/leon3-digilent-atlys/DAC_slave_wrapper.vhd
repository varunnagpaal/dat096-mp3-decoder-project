---------------------------------------------------------------------------
-- The following file contains the interface for an AMBA APB slave       --
-- This slave shall be the DAC and work with an interrupt function in    --
-- the Leon3 processor                                                   --
-- Version 0.1: 6/2 2012                                                   --
-- Sabina Friberg                                                        --
---------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library grlib;
use grlib.amba.all;
use grlib.stdlib.all;
use grlib.devices.all;

library work;
use work.dac_pkg.all;

entity DAC_slave_wrapper is
  generic (
    pindex   : integer := 0;
    paddr    : integer := 0;
    pmask    : integer := 16#fff#);          -- APB slave bus index
  port (
    rst      : in std_ulogic;
    clk      : in std_ulogic;
    apbi     : in apb_slv_in_type;     -- APB slave interface
    apbo     : out apb_slv_out_type;  -- APB slave output
    dac_clk2 : out std_ulogic;
    dac_in   : out std_ulogic;
    dac_ldac : out std_ulogic;
    dac_cs   : out std_ulogic);
end entity;

architecture arc of DAC_slave_wrapper is

--constant REVISION       : amba_version_type := 0; 
constant pconfig        : apb_config_type := (
                        0 => ahb_device_reg ( VENDOR_OPENCORES, GAISLER_GPREG, 0, 0, 0),
                        1 => apb_iobar(paddr, pmask));

signal start       : std_ulogic;    
signal spi_in      : std_logic_vector(11 downto 0);
signal dac_cs_temp : std_ulogic;
signal clk_temp    : std_ulogic;

begin
  dac_ldac <= '0';
  dac_cs   <= dac_cs_temp;

  u1: COMPONENT clock_divider_with_preset
    GENERIC MAP (divider=>1250)
    PORT MAP (clk => CLK, clk_preset => clk_temp, clk_enable => start);

  -- Combinatorial process
  apb_comb : process(rst, apbi)
  begin

    -- Read registers
   apbo.prdata <= (others => '0');
    case apbi.paddr(4 downto 2) is
      when "000" =>
          apbo.prdata(11 downto 0) <= spi_in; 
      when "001" =>
          apbo.prdata <= (0 => clk_temp, others => '0');
      when others =>
    end case;

    -- Write registers
    if (apbi.psel(pindex) and apbi.penable and apbi.pwrite) = '1' then
      case apbi.paddr(4 downto 2) is
        when "000" =>
          spi_in <= apbi.pwdata(15 downto 4);
        when others =>
      end case;
    end if;

    -- Reset registers
    if rst = '0' then
      spi_in <= (others => '0');
    end if;
    
  end process;

  -- Instantiation of the DAC component
  i_DAC : DAC 
  port map (
     CLK       => clk,
     swt       => spi_in,
     start     => start,
     A2_15     => dac_in,
     clk_l     => dac_clk2,
     CS        => dac_cs_temp);
  
  -- Set APB bus signals
  apbo.pirq    <= (others => '0'); -- No IRQ
  apbo.pindex  <= pindex;          -- VHDL Generic
  apbo.pconfig <= PCONFIG;         -- VHDL Constant

   -- pragma translate_off   
   bootmsg : report_version
   generic map ("apbvgreport_versiona" & tost(pindex) & ": DAC_wrapper rev 0");
   -- pragma translate_on 
end arc;
