----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:03 03/28/2017 
-- Design Name: 
-- Module Name:    ssdFSM - Behavioral 
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

entity ssdFSM1 is
    Port ( CLK: in std_logic;
			  counter_done : in  STD_LOGIC;
           Add : in  STD_LOGIC;
           Sub : in  STD_LOGIC;
			  reset: in STD_LOGIC;
			  rstcount: out STD_Logic;
           ssd_ctrl : out  STD_LOGIC_VECTOR (3 downto 0));
end ssdFSM1;

architecture Behavioral of ssdFSM1 is
type state is (stateONE, state_Add, state_Sub);
	
signal fsmState2: state; 

begin 

process
begin

wait until(CLK' EVENT AND CLK = '1');

if (reset='1') then
rstcount<='1';
fsmState2<=stateONE;
else


	case fsmState2 is

		when stateONE=>
		
				if (Add='1' and Sub='0') then 
					rstcount<='1';
					fsmState2<=state_Add;
				elsif (Sub='1' and Add='0') then
				   rstcount<='1';
					fsmState2<=state_Sub;
				else
					rstcount<='1';
					fsmState2<=stateONE;
				end if;

		when state_Add=>
				
				if (Add='1' and Sub='0') then
					rstcount<='1';
					fsmState2<=state_Add;
				elsif (Sub='1' and Add='0') then
					rstcount<='1';
					fsmState2<=state_Sub;
				else
					rstcount<='1';
					fsmState2<=state_Add;
				end if;
	
		when state_Sub=>
		
				if(Add='1' and Sub='0') then
						rstcount<='1';
						fsmState2<=state_Add;
				elsif (Sub='1' and Add='0') then
						rstcount<='1';
						fsmState2<=state_Sub;
				else
						rstcount<='1';
						fsmState2<=state_Sub;
				end if;
		
		end case;
		
	
end if;


	
end process;	 


ssd_ctrl <= "0111";

end Behavioral;

--if (counter_done='1') then
--else
			--		rstcount<='0';
				--	fsmState2<=statenoth;
		--	end if;