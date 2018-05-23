library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer is
port( IN0 :in std_logic;
		IN1 :in std_logic;
		IN2 :in std_logic;
		X :in std_logic;
		Y :in std_logic;
		OUTD :out std_logic);
end multiplexer;

architecture Behavioral of multiplexer is
begin

process(X,Y,IN0,IN1,IN2)

begin
if X='0' then
	if Y='0' then
		OUTD<=IN0;
	else
		OUTD<=IN1;
	end if;
else
	OUTD<=IN2;
end if;

end process;
end Behavioral;
