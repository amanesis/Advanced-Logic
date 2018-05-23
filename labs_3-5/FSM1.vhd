
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM1 is

    Port ( clk : in  STD_LOGIC;
		rst : in  STD_LOGIC;
		Push : in  STD_LOGIC;
		Pop : in  STD_LOGIC;
		Full_Stack : in  STD_LOGIC;
		Empty_Stack : in  STD_LOGIC;
		WE: out STD_LOGIC_VECTOR(0 DOWNTO 0);
		counterEN: out STD_LOGIC;
		UDcontrol: out STD_LOGIC;
		stackovf: out STD_LOGIC
	);

end FSM1;

architecture Behavioral of FSM1 is


type state is (stateZERO, state_push1, state_push2, state_pop1);

signal fsmState: state; 


begin

process
  
begin     

wait until(CLK' EVENT AND CLK = '1');


if (rst='1') then
	WE(0) <='0';
	counterEN <='0';
	UDcontrol <='1';
	stackovf <='0';
   fsmState<=stateZERO;

else


	case fsmState is
		
		when stateZERO =>
			
			
			if (Push='1' AND Full_Stack='0') then
						WE(0)<='1';
						counterEN <='0';
						UDcontrol <='1';
						fsmState<=state_push1;
					
			elsif (Push='1' AND Full_Stack='1') then
							WE(0)<='0';
							counterEN <='0';
							UDcontrol <='1';
							stackovf<='1';
							
						if(RST='1') then --ean exoume stackovf mono me reset ksana
												--ginetai arxikopoihsh
							fsmState<=stateZERO;
						end if;
						
			elsif (Pop='1' AND Empty_Stack='0') then
					WE(0)<='0';
					counterEN <='1';
					UDcontrol <='0';
					fsmState<=state_pop1;
					
			elsif (Pop='1' AND Empty_Stack='1') then
					WE(0)<='0';
					counterEN <='0';
					UDcontrol <='1';
					fsmState<=StateZERO;
			else 
					fsmState<=StateZERO;
			end if;
----------------------------------------------------------------------------------			
			when state_push1 =>
					WE(0)<='0';
					counterEN<='1';
					UDcontrol<='1';
					fsmState<=state_push2;
			
			when state_push2 =>
				
				WE(0)<='0';
				UDcontrol<='1';
				counterEN<='0';
				if (push='1') then
					fsmState<=state_push2;
				else
					fsmState<=stateZERO;
				end if;
			    
				
--------------------------------------------------------------------------------			
			
			when state_pop1 =>
					WE(0)<='0';
					counterEN<='0';
					UDcontrol<='0';
					
					if (pop='1') then
						fsmState<=state_pop1;
					else
						fsmState<=StateZERO;
					end if;
			
					
			end case;


end if;
end process;


end Behavioral;

