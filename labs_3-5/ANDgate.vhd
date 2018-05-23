library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ANDgate is
    Port ( A : in  STD_LOGIC;    -- AND gate input
           B : in  STD_LOGIC;    -- AND gate input
			  C : in  STD_LOGIC;    
			  D : in  STD_LOGIC;
			  E : in  STD_LOGIC;			  
           F : out STD_LOGIC    -- AND gate output
			 );
end ANDgate;

architecture Behavioral of ANDgate is

begin

    F <= A and B and C and D and E;    -- 2 input AND gate
	 
end Behavioral;