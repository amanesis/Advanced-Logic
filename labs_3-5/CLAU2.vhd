library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity c_l_unit is
port(CIN : IN STD_LOGIC;
		A : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		C : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
end c_l_unit;

architecture Behavioral of c_l_unit is
COMPONENT g_p_unit
Port ( A : in STD_LOGIC_VECTOR (3 DOWNTO 0);
		 B : in STD_LOGIC_VECTOR (3 DOWNTO 0);
		 G : out STD_LOGIC_VECTOR (3 DOWNTO 0);
		 P : out STD_LOGIC_VECTOR (3 DOWNTO 0));
END COMPONENT;

SIGNAL GH,PH : STD_LOGIC_VECTOR (3 DOWNTO 0);

begin

GP : g_p_unit

PORT MAP(A=>A, B=>B,G=>GH,P=>PH);

C(0)<=GH(0) OR (PH(0) AND CIN);

C(1)<=GH(1) OR (PH(1) AND GH(0)) OR (PH(1) AND PH(0) AND CIN);

C(2)<=GH(2) OR (PH(2) AND GH(1)) OR (PH(2) AND PH(1) AND GH(0)) OR (PH(2) AND PH(1) AND PH(0) AND CIN);

C(3)<=GH(3) OR (PH(3) AND GH(2)) OR (PH(3) AND PH(2) AND GH(1)) OR (PH(3) AND PH(2) AND PH(1) AND GH(0)) OR (PH(3) AND

PH(2) AND PH(1) AND PH(0) AND CIN) ;

end Behavioral;