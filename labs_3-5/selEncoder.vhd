----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:42 03/29/2017 
-- Design Name: 
-- Module Name:    selEncoder - Behavioral 
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

entity selEncoder is
    Port ( fsm2out : in  STD_LOGIC_VECTOR (3 downto 0);
           sel_out : out  STD_LOGIC_VECTOR (1 downto 0));
end selEncoder;

architecture Behavioral of selEncoder is

begin

process(fsm2out)
begin
				
if (fsm2out="0111") then
	sel_out<="00";
elsif (fsm2out="1011") then
	sel_out<="01";
elsif (fsm2out="1101") then
	sel_out<="10";
elsif (fsm2out="1110") then
	sel_out<="11";
else 
	sel_out<="00";
end if;

end process;

end Behavioral;

