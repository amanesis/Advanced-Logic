library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity any_bit is
port( Clock : in std_logic;
		reset : in std_logic;
		load_bit : in std_logic;
		X : in std_logic;
		Y : in std_logic;
		output : out std_logic);
end any_bit;

architecture Behavioral of any_bit is

component multiplexer
port( IN0 :in std_logic;
		IN1 :in std_logic;
		IN2 :in std_logic;
		X :in std_logic;
		Y :in std_logic;
		OUTD :out std_logic);
end component;

component flipflop
Port (Clock : in STD_LOGIC;
		reset : in STD_LOGIC;
		D : in STD_LOGIC;
		Q : out STD_LOGIC;
		NQ : out STD_LOGIC);
end component;

signal sQ : std_logic:='0';
signal sNQ :std_logic:='1';
signal sD: std_logic:='0';

begin

mux1:multiplexer
port map(IN0=>sQ,
			IN1=>sNQ,
			IN2=>load_bit,
			X=>X,
			Y =>Y,
			OUTD=>sD);

ff1:flipflop
Port map (Clock=>Clock,
			reset=>reset,
			D=>sD,
			Q=>sQ,
			NQ=>sNQ);
			
output<=sQ;

end Behavioral;
