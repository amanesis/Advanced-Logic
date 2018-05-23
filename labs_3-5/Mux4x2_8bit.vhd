----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:04:15 03/28/2017 
-- Design Name: 
-- Module Name:    Mux4x2_8bit - Behavioral 
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4x2_8bit is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);     
            A  : in  STD_LOGIC_VECTOR (7 downto 0);    
				B  : in  STD_LOGIC_VECTOR (7 downto 0);  
				C  : in  STD_LOGIC_VECTOR (7 downto 0);    
				D  : in  STD_LOGIC_VECTOR (7 downto 0);    			
				X  : out STD_LOGIC_VECTOR(7 DOWNTO 0));                     
end Mux4x2_8bit;

architecture Behavioral of Mux4x2_8bit is
begin
with SEL select
    X <= A when "00",
         B when "01",
         C when "10",
         D when "11",
         (others=>'0')  when others;
end Behavioral;
