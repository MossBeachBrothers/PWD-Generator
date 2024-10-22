library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF_Debounce is
Port ( 
 CLK : in std_logic;
 en: in std_logic;
 D : in std_logic;
 Q : out std_logic
 );
end DFF_Debounce;

architecture Behavioral of DFF_Debounce is
begin
process(CLK)
begin
 if (rising_edge(CLK)) then
 if (en='1') then
  Q <= D;
 end if;
end if;
end process;
end Behavioral;
