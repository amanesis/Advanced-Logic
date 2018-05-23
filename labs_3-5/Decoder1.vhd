----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:36 03/28/2017 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity Decoder1 is
    Port ( in1 : in  STD_LOGIC_VECTOR (1 downto 0);
           dout1 : out  STD_LOGIC_VECTOR (7 downto 0);
			  dout2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  dout3 : out  STD_LOGIC_VECTOR (7 downto 0);
			  dout4 : out  STD_LOGIC_VECTOR (7 downto 0);
			  enable:in std_logic);
end Decoder1;

architecture Behavioral of Decoder1 is

begin

process(in1)
begin

if (in1="00") then
	dout1<="10011111";
	dout2<="11111111";
	dout3<="11111111";
	dout4<="11111111";
end if;

if (in1="10" ) then

  
   dout1<="00010001";
	dout2<="11111111";
	dout3<="11111111";
	dout4<="11111111";

end if;

if (in1="01") then
   dout1<="01001001";
	dout2<="11111111";
	dout3<="11111111";
	dout4<="11111111";
end if;

end process;
end Behavioral;
 
