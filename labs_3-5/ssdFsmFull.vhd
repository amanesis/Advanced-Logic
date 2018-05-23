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

entity ssdFsmFull is
    Port ( CLK: in std_logic;
           BTN0: in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
			  BTN2 : in  STD_LOGIC;
			  reset: in STD_LOGIC;
			  ssd_ctrl0 : in  STD_LOGIC_VECTOR (3 downto 0);
			  ssd_ctrl1: in  STD_LOGIC_VECTOR (3 downto 0);
			  ssd_ctrl2 : in  STD_LOGIC_VECTOR (3 downto 0);
           ssd_ctrl_OUT : out  STD_LOGIC_VECTOR (3 downto 0);
			  mode_control : out  STD_LOGIC_VECTOR (1 downto 0);
			  OUT_IN : out  STD_LOGIC_VECTOR (1 downto 0);
			  en : out STD_LOGIC);
			  
end ssdFsmFull;

architecture Behavioral of ssdFsmFull is
type state is (stateZERO, stateONE, stateTWO);
	
signal fsmState2: state; 

begin 

process
begin

wait until(CLK' EVENT AND CLK = '1');

if (reset='1') then
fsmState2<=stateZERO;
else


	case fsmState2 is

		when stateZERO=>
		
				ssd_ctrl_OUT<=ssd_ctrl0;
				en<='1';
				if (BTN2 = '1') then 
					fsmState2<=stateONE;
				else
					fsmState2<=stateZERO;
				end if;

		when stateONE=>
		
				ssd_ctrl_OUT<=ssd_ctrl1;
				en<='0';
				if (BTN2 = '1') then
					fsmState2<=stateTWO;
				else
					fsmState2<=stateONE;
				end if;
	
		when stateTWO=>
		
				ssd_ctrl_OUT<=ssd_ctrl2;
				en<='0';
				if(BTN2 = '1') then
						fsmState2<=stateZERO;
				else
						fsmState2<=stateTWO;
				end if;
		
		end case;
		
	
end if;

if (BTN0='0' AND BTN1='1') then
		OUT_IN<="01";
elsif (BTN0='1' AND BTN1='0') then
		OUT_IN<="10";
else 
		OUT_IN<="00";
end if;
	
end process;	 

with fsmState2 select
mode_control <= "00" when stateZERO,	
					 "01" when stateONE,
					 "10" when stateTWO;
				

end Behavioral;

--if (counter_done='1') then
--else
			--		rstcount<='0';
				--	fsmState2<=statenoth;
		--	end if;