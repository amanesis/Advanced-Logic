
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM2 is

    Port ( clk : in  STD_LOGIC;
		rst : in  STD_LOGIC;
		ADD : in  STD_LOGIC;
		SUB : in  STD_LOGIC;
		PUSHout: out STD_LOGIC;
		POPout: out STD_LOGIC;
		AddSub: out STD_LOGIC
	);

end FSM2;
architecture Behavioral of FSM2 is


type state is (stateZERO, state_push1, state_push2, state_pop1, state_pop2);

signal fsmState: state; 


begin

process
  
begin     

wait until(CLK' EVENT AND CLK = '1');


if (rst='1') then
		PUSHout<='0';
		POPout<='0';
		AddSub <='0';
		fsmState<=stateZERO;

else

	case fsmState is
		
		when stateZERO =>
			
			
			if (ADD='1' AND SUB='0') then
						AddSub <='0';
						fsmState<=state_pop1;

					
			elsif (SUB='1' AND ADD='0') then
						AddSub <='1';
						fsmState<=state_pop1;
			else 
					fsmState<=StateZERO;
			end if;
----------------------------------------------------------------------------------			
			when state_pop1 =>
				PUSHout<='0';
				POPout<='1';
				fsmState<=state_pop2;
				
			when state_pop2 =>
				PUSHout<='0';
				POPout<='1';
				fsmState<=state_push1;
				
			when state_push1 =>
					PUSHout<='1';
					POPout<='0';
					fsmState<=state_push2;
			
			when state_push2 =>
				PUSHout<='1';
				POPout<='0';
				fsmState<=stateZERO;

			end case;
end if;

end process;


end Behavioral;


