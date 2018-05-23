library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity counter2 is

generic(n: natural :=17);
port(	clock:	in std_logic;
	clear:	in std_logic;
	count:	in std_logic;
	done: out std_logic;
	cout:	out std_logic_vector(n-1 downto 0)
);
end counter2;

----------------------------------------------------

architecture behv of counter2 is		 	  
	
    signal couttmp: std_logic_vector(n-1 downto 0);
		signal tmpdone:std_logic;
begin

    -- behavior describe the counter

    process(clock, count, clear)
    begin
	if clear = '1' then
			couttmp <= (others=>'0');
			cout<=couttmp;
			tmpdone<='0';
			done<=tmpdone;
	elsif (clock='1' and clock'event) then
	    if count = '1' then
			couttmp<=couttmp+1;
			cout <= couttmp;
				if (couttmp="00000000000000010") then
					tmpdone<='1';
					done<=tmpdone;
				end if;
	    end if;
	end if;
    end process;	
	

end behv;