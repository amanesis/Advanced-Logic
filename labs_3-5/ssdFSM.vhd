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

entity ssdFSM is
    Port ( CLK: in std_logic;
			  counter_done : in  STD_LOGIC;
           empty : in  STD_LOGIC;
           full : in  STD_LOGIC;
           s_ovf : in  STD_LOGIC;
			  reset: in STD_LOGIC;
			  rstcount: out STD_Logic;
           ssd_ctrl : out  STD_LOGIC_VECTOR (3 downto 0));
end ssdFSM;

architecture Behavioral of ssdFSM is
type state2 is (statenoth, state_empty, state_full, state_ovf, state_ovf1, state_ovf2);
	
signal fsmState2: state2; 

begin 

process
begin

wait until(CLK' EVENT AND CLK = '1');

if (reset='1') then
rstcount<='1';
fsmState2<=state_empty;
else


	case fsmState2 is

		when statenoth=>
		
				if (empty='1') then 
					rstcount<='1';
					fsmState2<=state_empty;
				elsif (full='1') then
				   rstcount<='1';
					fsmState2<=state_full;
				else
					rstcount<='1';
					fsmState2<=statenoth;
				end if;

		when state_full=>
				
				if (full='1' and s_ovf='1') then
					rstcount<='1';
					fsmState2<=state_ovf;
				elsif (full='1' and s_ovf='0') then
					rstcount<='1';
					fsmState2<=state_full;
				else
					rstcount<='1';
					fsmState2<=statenoth;
				end if;
	
		when state_empty=>
		
				if(full='0' and empty='1') then
						rstcount<='1';
						fsmState2<=state_empty;
				else
						rstcount<='1';
						fsmState2<=statenoth;
				end if;
		
		when state_ovf=>
		
		--if (counter_done='1') then
				rstcount<='1';
				fsmState2<=state_ovf1;
		--else
		--			rstcount<='0';
		--			fsmState2<=state_ovf;
		--	end if;
			
		when state_ovf1=>
		
		--if (counter_done='1') then
					rstcount<='1';
					fsmState2<=state_ovf2;
		--else
		--			rstcount<='0';
		--			fsmState2<=state_ovf1;
		--	end if;
		
		when state_ovf2=>
		
		--if (counter_done='1') then
					rstcount<='1';
					fsmState2<=state_ovf;
		--else
		--			rstcount<='0';
		--			fsmState2<=state_ovf2;
		--	end if;
		
		end case;
		
	
end if;


	
end process;	 

with fsmState2 select
ssd_ctrl <= "1111" when statenoth,
				"1011" when state_ovf,
				"1101" when state_ovf1,
				"1110" when state_ovf2,
				"1110" when state_empty,
				"1110" when state_full;

end Behavioral;

--if (counter_done='1') then
--else
			--		rstcount<='0';
				--	fsmState2<=statenoth;
		--	end if;