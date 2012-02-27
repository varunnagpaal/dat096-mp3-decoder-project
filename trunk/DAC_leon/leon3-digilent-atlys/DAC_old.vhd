library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DAC is
    Port (clk         : in  STD_LOGIC;
          reset       : in std_logic;
          serial_en   : in std_logic;
          smp_clk     : in std_logic;
          d_in        : in  STD_LOGIC_VECTOR (11 downto 0);
          ldac        : out std_logic;
          sdi         : out std_logic;
          cs          : out std_logic
         );
end DAC;

architecture Behavioral of DAC is

signal data_out   : std_logic_vector (15 downto 0); -- Signal for keeping the correct in_data and config bits
signal bit_cntr   : integer range 0 to 16; -- controls which bit to put on the sdi
constant a_b      : std_logic := '0'; -- choose a or b output channel
constant ga       : std_logic := '0'; -- For *2 gain
constant dac_shdn : std_logic := '1';
signal int_start  : std_logic := '0';

begin

  ldac <= '0';
  
  -- Process for placing bits on sdi and control output signals
  data_put: process (clk)
  begin
    if rising_edge (clk) then
      if reset = '1' then
        int_start <= '0';
        bit_cntr <= 0;
        cs <= '1';
                        
      elsif smp_clk = '1' and int_start = '0' then
        int_start <= '1';
        bit_cntr <= 0;
        cs <= '0';
        sdi <= a_b;
        data_out <= a_b & '0' & ga & dac_shdn & d_in;
      end if;
    
      if int_start = '1' and serial_en = '1' then   --sdi_clk_cntr = 40 due to placing the output in between two pulses
        if (bit_cntr < 15) then
          cs<= '0';
          sdi<= data_out(14-bit_cntr); -- msb first
          bit_cntr<= bit_cntr+1;
        elsif (bit_cntr = 15) then
          cs<= '1';
          int_start <= '1';
          bit_cntr <= bit_cntr +1;
        else
          cs <= '1';
          bit_cntr <= 0;
          int_start <= '0';  
        end if;
      end if;
    end if;-- rising edge
  end process;
end Behavioral;
