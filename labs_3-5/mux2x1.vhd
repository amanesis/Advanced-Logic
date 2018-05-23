library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2X1 is
    Port ( SEL : in  STD_LOGIC_VECTOR(0 DOWNTO 0);
           A   : in  STD_LOGIC_VECTOR (4 downto 0);
           B   : in  STD_LOGIC_VECTOR (4 downto 0);
           X   : out STD_LOGIC_VECTOR (4 downto 0));
end mux_2X1;

architecture Behavioral of mux_2X1 is
begin
    X <= A when (SEL(0) = '0') else B;
end Behavioral;