library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2X1_mode is
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (7 downto 0);
           B   : in  STD_LOGIC_VECTOR (7 downto 0);
           X   : out STD_LOGIC_VECTOR (7 downto 0));
end mux2X1_mode;

architecture Behavioral of mux2X1_mode is
begin
    X <= A when (SEL = '0') else B;
end Behavioral;