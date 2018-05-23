----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:21 04/04/2016 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparator is
    Port ( A : in  STD_LOGIC_VECTOR(4 downto 0);
           B : in  STD_LOGIC_VECTOR(4 downto 0);
           C : out  STD_LOGIC
			  );
end Comparator;

architecture Structural of Comparator is

signal s: std_logic_vector(4 downto 0);

Component ANDgate is
Port ( A : in  STD_LOGIC;    -- AND gate input
       B : in  STD_LOGIC;    -- AND gate input
	    C : in  STD_LOGIC;    
	    D : in  STD_LOGIC;  
		 E : in  STD_LOGIC;
       F : out STD_LOGIC    -- AND gate output
	   );
end Component;

Component XNORgate is
Port( A : in std_logic;
		B : in std_logic;
		C : out std_logic
	  );
end Component;

begin

XNORa: XNORgate
		 port map( A=>A(0),
					  B=>B(0),
					  C=>s(0)
		 );

XNORb: XNORgate
		 port map( A=>A(1),
					  B=>B(1),
					  C=>s(1)
		 );
		 
XNORc: XNORgate
		 port map( A=>A(2),
					  B=>B(2),
					  C=>s(2)
		 );
		 
XNORd: XNORgate
		 port map( A=>A(3),
					  B=>B(3),
					  C=>s(3)
		 );

XNORe: XNORgate
		 port map( A=>A(4),
					  B=>B(4),
					  C=>s(4)
		 );
		 
AndGateIs: ANDgate
			  port map( A=>s(0),
							B=>s(1),
							C=>s(2),
							D=>s(3),
							E=>s(4),
							F=>C
				);

end Structural;

