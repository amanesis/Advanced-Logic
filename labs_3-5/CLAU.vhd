library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
	Port ( X : in STD_LOGIC;--_VECTOR (0 DOWNTO 0);
			 Y : in STD_LOGIC;--_VECTOR (0 DOWNTO 0);
			 C : out STD_LOGIC;--_VECTOR (0 DOWNTO 0);
			 S : out STD_LOGIC);--_VECTOR (0 DOWNTO 0));
	end half_adder;

architecture Behavioral of half_adder is
	begin
		C<=X AND Y;
		S<=X XOR Y;
		
	end Behavioral;