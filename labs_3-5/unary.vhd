----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:05 05/15/2017 
-- Design Name: 
-- Module Name:    unary - Behavioral 
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

entity unary is
port (A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
end unary;

architecture Behavioral of unary is

COMPONENT S_UNIT8
	PORT(
		CIN : IN std_logic;
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);          
		S : OUT std_logic_vector(7 downto 0);
		C8 : OUT std_logic
		);
	END COMPONENT;

signal notA : STD_LOGIC_vector(7 downto 0);
signal cout : STD_LOGIC;
begin

notA <= not(A);

Inst_S_UNIT8: S_UNIT8 PORT MAP(
		CIN => '0',
		A => notA,
		B => "00000001",
		S => S,
		C8 => cout
	);


end Behavioral;

