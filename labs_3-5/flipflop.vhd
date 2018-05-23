library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is
Port (Clock : in STD_LOGIC;
		reset : in STD_LOGIC;
		D : in STD_LOGIC;
		Q : out STD_LOGIC;
		NQ : out STD_LOGIC);
end flipflop;

architecture Behavioral of flipflop is
begin

process(reset,Clock)

begin
if reset='1' then
		Q<='0';
		NQ<='1';
elsif rising_edge(Clock) then
		Q<=D;
		NQ<=not D;
end if;

end process;
end Behavioral;
