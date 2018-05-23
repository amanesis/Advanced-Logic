library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity s_unit is
port (CIN : IN STD_LOGIC;
		A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		C3 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0));
end s_unit;

architecture Behavioral of s_unit is
COMPONENT c_l_unit
port(CIN : IN STD_LOGIC;
		A : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		C : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END COMPONENT;

SIGNAL CH : STD_LOGIC_VECTOR (3 DOWNTO 0);

begin

CL : c_l_unit

port map(CIN => CIN, A=>A,B=>B,C=>CH);

C3(0) <= CH(3);

S(0) <= (A(0) XOR B(0)) XOR CIN;

S(1) <= (A(1) XOR B(1)) XOR CH(0);

S(2) <= (A(2) XOR B(2)) XOR CH(1);

S(3) <= (A(3) XOR B(3)) XOR CH(2);

end Behavioral;