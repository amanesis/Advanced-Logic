----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:00 05/15/2017 
-- Design Name: 
-- Module Name:    add_sub - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add_sub is
PORT
	(
		A: 		IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		B: 		IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		AddSub: IN STD_LOGIC;
		ASout: 	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end add_sub;

architecture Behavioral of add_sub is

begin
	process (A, B, AddSub)
	begin
	
		if (AddSub = '0') then
					ASout <= A + B;
		else
			ASout <= A - B;
		end if;

	end process;
	
end Behavioral;

