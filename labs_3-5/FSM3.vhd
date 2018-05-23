
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FSM3 is

    Port ( clk : in  STD_LOGIC;
		rst : in  STD_LOGIC;
		Usub : in  STD_LOGIC;
		xy : in  STD_LOGIC;
		PUSHout: out STD_LOGIC;
		POPout: out STD_LOGIC;
		UxySEL: out STD_LOGIC
	);

end FSM3;
architecture Behavioral of FSM3 is


type state is (stateZERO, state_push1, state_push2, state_pop1, state_pop2);

signal fsmState: state; 


begin

process
  
begin     

wait until(CLK' EVENT AND CLK = '1');


if (rst='1') then
		PUSHout<='0';
		POPout<='0';
		UxySEL <='0';
		fsmState<=stateZERO;

else

	case fsmState is
		
		when stateZERO =>
			
			
			if (Usub='1' AND xy='0') then
						UxySEL <='0';
						fsmState<=state_pop1;

					
			elsif (xy='1' AND Usub='0') then
						UxySEL <='1';
						fsmState<=state_pop1;
			else 
					fsmState<=StateZERO;
			end if;
----------------------------------------------------------------------------------			
			when state_pop1 =>
				PUSHout<='0';
				POPout<='1';
				if (Usub='1' AND xy='0') then
					fsmState<=state_push2;
				else 
					fsmState<=state_pop2;
				end if;
				
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


