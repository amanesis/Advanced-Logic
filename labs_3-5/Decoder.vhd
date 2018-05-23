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

entity Decoder is
    Port ( counter_state : in  STD_LOGIC_VECTOR (4 downto 0);
           dout1 : out  STD_LOGIC_VECTOR (7 downto 0);
			  dout2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  dout3 : out  STD_LOGIC_VECTOR (7 downto 0);
			  dout4 : out  STD_LOGIC_VECTOR (7 downto 0);
			  enable:in std_logic);
end Decoder;

architecture Behavioral of Decoder is

begin

process(counter_state)
begin

if (counter_state="00000") then
	dout1<="11111111";
	dout2<="11111111";
	dout3<="11111111";
	dout4<="01100001";
end if;

if (counter_state="11111" ) then

  --if (enable='1') then
   dout1<="11111111";
	dout2<="00000011";
	dout3<="10000011";
	dout4<="01110001";
	--elsif (enable='0') then
	--dout1<="11111111";
	--dout2<="11111111";
	--dout3<="11111111";
	--dout4<="01110001";
	--end if;
	
end if;

if (counter_state/="11111" and counter_state/="00000") then
   dout1<="11111111";
	dout2<="11111111";
	dout3<="11111111";
	dout4<="11111111";
end if;

end process;
end Behavioral;
 
