library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library grlib;
use grlib.amba.all;
use grlib.stdlib.all;

package dac_pkg is
  component DAC_slave_wrapper is
    generic(
      pindex      : integer := 0;
      paddr       : integer := 0;
      pmask       : integer := 16#fff#
      );
    port (
      rst      : in  std_ulogic;
      clk      : in  std_ulogic;
      apbi     : in  apb_slv_in_type;
      apbo     : out apb_slv_out_type;
      dac_clk2 : out std_ulogic;
      dac_in   : out std_ulogic;
      dac_ldac : out std_ulogic;
      dac_cs   : out std_ulogic);
  end component DAC_slave_wrapper;
 
  component DAC is
    PORT
    (
        CLK    : IN std_logic;
        swt    : IN std_logic_vector (11 DOWNTO 0); -- parallel data input
        start  : IN std_logic; -- start button
        A2_15  : out std_logic;   --SDI of DAC component
        clk_l  : OUT std_logic;
        CS     : OUT std_logic
    );
  end component;
   
  component clock_divider_with_preset is
  generic (
             divider : INTEGER := 8
          );
  port (
       clk        : in std_logic;
       clk_preset : out std_logic;
       clk_enable : out std_logic
       );
  end component clock_divider_with_preset;
end package;

