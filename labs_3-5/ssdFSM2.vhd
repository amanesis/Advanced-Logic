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

entity ssdFSM2 is
    Port ( CLK: in std_logic;
			  counter_done : in  STD_LOGIC;
           UnSub : in  STD_LOGIC;
           xy : in  STD_LOGIC;
			  reset: in STD_LOGIC;
			  rstcount: out STD_Logic;
           ssd_ctrl : out  STD_LOGIC_VECTOR (3 downto 0));
end ssdFSM2;

architecture Behavioral of ssdFSM2 is
type state is (stateTWO, state_UnSub, state_xy1, state_xy2);
	
signal fsmState2: state; 

begin 

process
begin

wait until(CLK' EVENT AND CLK = '1');

if (reset='1') then
rstcount<='1';
fsmState2<=stateTWO;
else


	case fsmState2 is

		when stateTWO=>
		
				if (UnSub='1' and xy='0') then 
					rstcount<='1';
					fsmState2<=state_UnSub;
				elsif (xy='1' and UnSub='0') then
				   rstcount<='1';
					fsmState2<=state_xy1;
				else
					rstcount<='1';
					fsmState2<=stateTWO;
				end if;

		when state_UnSub=>
				
				if (UnSub='1' and xy='0') then
					rstcount<='1';
					fsmState2<=state_UnSub;
				elsif (xy='1' and UnSub='0') then
					rstcount<='1';
					fsmState2<=state_xy1;
				else
					rstcount<='1';
					fsmState2<=state_UnSub;
				end if;
	
		when state_xy1=>
		
		if (UnSub='1' and xy='0') then
			rstcount<='1';
			fsmState2<=state_UnSub;
		elsif (xy='1' and UnSub='0') then
			--if (counter_done='1') then
					rstcount<='1';
					fsmState2<=state_xy2;
			--else
			--			rstcount<='0';
			--			fsmState2<=state_xy1;
			--	end if;
		end if;
		
		when state_xy2=>
		
		if (UnSub='1' and xy='0') then
			rstcount<='1';
			fsmState2<=state_UnSub;
		elsif (xy='1' and UnSub='0') then
--			if (counter_done='1') then
						rstcount<='1';
						fsmState2<=state_xy1;
			--else
			--			rstcount<='0';
			--			fsmState2<=state_xy2;
			--	end if;
		end if;
		
		end case;
		
	
end if;


	
end process;	 


with fsmState2 select
ssd_ctrl <= "0111" when stateTWO,
				"0111" when state_UnSub,
				"0111" when state_xy1,
				"1011" when state_xy2;

end Behavioral;

--if (counter_done='1') then
--else
			--		rstcount<='0';
				--	fsmState2<=statenoth;
		--	end if;