library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity XNORgate is
Port( A : in std_logic;
		B : in std_logic;
		C : out std_logic
	  );
end XNORgate;

architecture Behavioral of xnorgate is

begin

C <= A xnor B ;

end Behavioral;