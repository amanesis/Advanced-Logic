library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
port( Clock : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		load : in std_logic;
		UD : in std_logic;
		outcount : out std_logic_vector(4 downto 0));
end counter;

architecture Behavioral of counter is
component any_bit
port( Clock : in std_logic;
		reset : in std_logic;
		load_bit : in std_logic;
		X : in std_logic;
		Y : in std_logic;
		output : out std_logic);
end component;

signal soutput : std_logic_vector(4 downto 0);
signal s0,ns0,s1,ns1,s2,ns2,s3,ns3 : std_logic;
signal y0,y1,y2,y3,Y4 : std_logic;

begin
y0<=(UD and enable) or ((not UD) and enable);

AB0: any_bit
port map (Clock=>Clock,
		reset=>reset,
		load_bit=>'1',
		X=>load,
		Y=>y0,
		output=>soutput(0));

s0<=soutput(0);
ns0<=not soutput(0);
y1<=(UD and enable and s0) or ((not UD) and enable and ns0);

AB1: any_bit
port map (Clock=>Clock,
		reset=>reset,
		load_bit=>'1',
		X=>load,
		Y=>y1,
		output=>soutput(1));

s1<=soutput(0) and soutput(1);
ns1<=ns0 and (not soutput(1));
y2<=(UD and enable and s1) or ((not UD) and enable and ns1);

AB2: any_bit
port map (Clock=>Clock,
		reset=>reset,
		load_bit=>'0',
		X=>load,
		Y=>y2,
		output=>soutput(2));
		
s2<=s1 and soutput(2);
ns2<=ns1 and (not soutput(2));
y3<=(UD and enable and s2) or ((not UD) and enable and ns2);

AB3: any_bit
port map (Clock=>Clock,
		reset=>reset,
		load_bit=>'0',
		X=>load,
		Y=>y3,
		output=>soutput(3));

s3<=s2 and soutput(3);
ns3<=ns2 and (not soutput(3));
Y4<=(UD and enable and s3) or ((not UD) and enable and ns3);

AB4: any_bit
port map (Clock=>Clock,
		reset=>reset,
		load_bit=>'0',
		X=>load,
		Y=>y4,
		output=>soutput(4));

outcount<=soutput;

end Behavioral;
