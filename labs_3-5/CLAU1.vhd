library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity g_p_unit is
	Port ( A : in STD_LOGIC_VECTOR (3 DOWNTO 0);
			 B : in STD_LOGIC_VECTOR (3 DOWNTO 0);
			 G : out STD_LOGIC_VECTOR (3 DOWNTO 0);
			 P : out STD_LOGIC_VECTOR (3 DOWNTO 0));
	end g_p_unit;

architecture Behavioral of g_p_unit is
COMPONENT half_adder
Port ( X : in STD_LOGIC;--_VECTOR (0 DOWNTO 0);
		 Y : in STD_LOGIC;--_VECTOR (0 DOWNTO 0);
		 C : out STD_LOGIC;--_VECTOR (0 DOWNTO 0);
		 S : out STD_LOGIC);--_VECTOR (0 DOWNTO 0));
END COMPONENT;

begin

HA1 : half_adder
port map (X=>A(0),Y=>B(0), C=>G(0), S=>P(0));

HA2 : half_adder
port map (X=>A(1), Y=>B(1),C=>G(1),S=>P(1));

HA3 : half_adder
port map (X=>A(2), Y=>B(2), C=>G(2), S=>P(2));

HA4 : half_adder
port map (X=>A(3),Y=>B(3), C=>G(3),S=>P(3));

end Behavioral;