library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity counter125000 is

generic(n: natural :=17);
port(	clock:	in std_logic;
	clear:	in std_logic;
	count:	in std_logic;
	done: out std_logic;
	Q:	out std_logic_vector(n-1 downto 0)
);
end counter125000;

----------------------------------------------------

architecture behv of counter125000 is		 	  
	
    signal Pre_Q: std_logic_vector(n-1 downto 0);
	 signal tmpdone:std_logic;
 
begin

   

    process(clock, count, clear)
    begin
	if clear = '1' then
 	    Pre_Q <= (others=>'0');
		 tmpdone<= '0';
	elsif (clock='1' and clock'event) then
	    if count = '1' then
		Pre_Q <= Pre_Q + 1;
				if (Pre_Q="11110100001000111") then
					tmpdone<='1';
					else
					tmpdone<='0';
				end if;
	end if;
	end if;
    end process;	
	
    
    Q <= Pre_Q;
	 done<=tmpdone;

end behv;

-----------------------------------------------------