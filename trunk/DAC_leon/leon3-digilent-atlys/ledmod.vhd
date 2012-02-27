library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library grlib;
use grlib.amba.all;
use grlib.stdlib.all;
use grlib.devices.all;

entity ledmod is
  generic(
    pindex      : integer := 0;
    paddr       : integer := 0;
    pmask       : integer := 16#fff#
    );
  port (
    rstn  : in  std_ulogic;
    clk   : in  std_ulogic;
    apbi   : in  apb_slv_in_type;
    apbo   : out apb_slv_out_type;
    led0   : out std_logic;
    led1   : out std_logic
  );
 
end entity ledmod;

architecture rtl of ledmod is

  -- Group all your memory-mapped registers for this peripheral in one record
  type led_registers is record
    ledctrl       : std_logic_vector(31 downto 0);
  end record;

  -- VHDL 2 process method signals
  signal apb_reg    : led_registers;
  signal apb_reg_in : led_registers;
  
  -- This is a hack, you can use the same configuration for all peripherals
constant PCONFIG        : apb_config_type := (
                        0 => ahb_device_reg ( VENDOR_OPENCORES, GAISLER_GPREG, 0, 0, 0),
                        1 => apb_iobar(paddr, pmask));

begin

  -- combinatorial process
  apb_comb : process(rstn, apb_reg, apbi)
    variable v : led_registers;
  begin
    v := apb_reg;

    -- Read registers
    apbo.prdata <= (others => '0');
    case apbi.paddr(4 downto 2) is         
      when "000" =>
          apbo.prdata <= apb_reg.ledctrl;
      when others =>
    end case;

    -- Write registers
    if (apbi.psel(pindex) and apbi.penable and apbi.pwrite) = '1' then
      case apbi.paddr(4 downto 2) is
        when "000" =>
          v.ledctrl(0) := apbi.pwdata(0);
    v.ledctrl(1) := apbi.pwdata(1);
        when others =>
      end case;
    end if;

    -- Reset registers
    if rstn = '0' then
      v.ledctrl         := (others => '0');
    end if;

    apb_reg_in <= v;
    
    led0 <= apb_reg.ledctrl(0);
    led1 <= apb_reg.ledctrl(1);
    
  end process;

  -- Sequential process
  regs: process (clk)
  begin
    if rstn = '0' then
      apb_reg.ledctrl <= (others => '0');
    elsif rising_edge(clk) then
      apb_reg <= apb_reg_in;
    end if;
  end process;

  -- Set APB bus signals
  apbo.pirq    <= (others => '0'); -- No IRQ
  apbo.pindex  <= pindex;          -- VHDL Generic
  apbo.pconfig <= PCONFIG;         -- VHDL Constant


   -- pragma translate_off   
   bootmsg : report_version 
   generic map ("apbvgreport_versiona" & tost(pindex) & ": LED Control rev 0");
   -- pragma translate_on
end rtl;

