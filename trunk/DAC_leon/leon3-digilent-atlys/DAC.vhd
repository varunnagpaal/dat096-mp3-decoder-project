--FPGA Driver for DAC

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.dac_pkg.all;

ENTITY DAC IS
  PORT
  (
    CLK : IN std_logic;
    swt : IN std_logic_vector (11 DOWNTO 0); -- parallel data input
    start       : IN std_logic; -- start button
    A2_15  : out std_logic;   --SDI of DAC component
    clk_l  : OUT std_logic;
    CS     : OUT std_logic
  );
END ENTITY DAC;
  
ARCHITECTURE arch_DAC OF DAC IS
  

-- Signals
SIGNAL clk_low, clk_preset : std_logic;
SIGNAL finished : std_logic;
SIGNAL swt_reg : std_logic_vector(11 DOWNTO 0);
SIGNAL send_values : std_logic;

BEGIN
  -- Generate slow clock
  u1: COMPONENT clock_divider_with_preset
    GENERIC MAP (divider=>50)
    PORT MAP (clk => CLK, clk_preset => clk_preset, clk_enable => clk_low);
  
  -- Send slow clock to DAC
  clk_l <= clk_low;
  
  bit_count:PROCESS(clk) IS
  VARIABLE count: INTEGER;
  VARIABLE running: BIT := '0';
  BEGIN
    IF rising_edge(clk) THEN
      IF (start = '0' AND running = '0') THEN
        CS <= '1';
        running := '0';
        send_values <= '0';
      ELSIF (start = '1' AND running = '0') THEN
        CS <= '0';
        running := '1';
        swt_reg <= swt;
        send_values <= '1';
      ELSIF (finished = '1' AND running ='1' AND start = '0') THEN
        CS <= '1';
        running := '0';
        send_values <= '0';
      END IF;
    END IF;
  END PROCESS;
  
  
  -- Process to send values to DAC
  send_bits : PROCESS(clk_preset)
  VARIABLE count : INTEGER;
  BEGIN
    IF rising_edge(clk_preset) THEN
      IF send_values = '1' AND count >= 0 THEN   
        CASE count IS --Set output to correct value
          WHEN 15 => A2_15 <= '0'; -- A or B channel A=0
	  WHEN 14 => A2_15 <= '0'; -- Don't care
	  WHEN 13 => A2_15 <= '0'; -- Gain
	  WHEN 12 => A2_15 <= '1'; -- Shutdown if 0
	  WHEN 11 => A2_15 <= swt_reg(11);
	  WHEN 10 => A2_15 <= swt_reg(10);
	  WHEN 9  => A2_15 <= swt_reg(9);
	  WHEN 8  => A2_15 <= swt_reg(8);
	  WHEN 7  => A2_15 <= swt_reg(7);
	  WHEN 6  => A2_15 <= swt_reg(6);
	  WHEN 5  => A2_15 <= swt_reg(5);
	  WHEN 4  => A2_15 <= swt_reg(4);
	  WHEN 3  => A2_15 <= swt_reg(3);
	  WHEN 2  => A2_15 <= swt_reg(2);
	  WHEN 1  => A2_15 <= swt_reg(1);
	  WHEN 0  => A2_15 <= swt_reg(0);
	  WHEN OTHERS => A2_15 <= '0';
        END CASE;
        count := count - 1;
      ELSIF send_values = '1' THEN
        finished <= '1';
      ELSE
        finished <= '0';
        count := 15;
      END IF;
    END IF;  
  END PROCESS send_bits;
END ARCHITECTURE;
