-- Electronic system design
-- Lab assignment 5
--Christoffer Nilsson and Daniel Modrack
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY clock_divider_with_preset IS
  GENERIC 
  (
   divider : INTEGER := 8
   );
  PORT
  (
    clk: IN std_logic;
    clk_preset: OUT std_logic;
    clk_enable: OUT std_logic
  );
END ENTITY clock_divider_with_preset;

ARCHITECTURE arch_clock_divider_with_preset OF clock_divider_with_preset IS
  BEGIN
  divide:PROCESS(clk) IS
  VARIABLE count : INTEGER := 0;
  BEGIN  
     IF rising_edge(clk) THEN
       IF count = divider THEN
         clk_preset <= '0';
         clk_enable <= '0';
         count := 0;
       ELSIF count = 15 THEN
         clk_preset <= '1';
       ELSIF count = 20 THEN
         clk_preset <= '0';
       ELSIF count > divider/2 THEN
         clk_enable <= '1';
       ELSE
         clk_enable <= '0';
       END IF;
       count := count + 1;
     END IF;
  END PROCESS;
END ARCHITECTURE arch_clock_divider_with_preset;
