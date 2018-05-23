----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:02:56 03/31/2017 
-- Design Name: 
-- Module Name:    toplvl2 - Behavioral 
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

entity toplvl2 is
	
	PORT(
		clk : IN std_logic;
		push : IN std_logic;
		pop : IN std_logic;
		reset : IN std_logic;
		btn2  : IN std_logic;
		datain : IN std_logic_vector(7 downto 0);          
		dssenbl : OUT std_logic_vector(3 downto 0);
		mux8output : OUT std_logic_vector(7 downto 0);
		dataout : OUT std_logic_vector(7 downto 0);
		StackOVF : OUT std_logic
		);
end toplvl2;

architecture Behavioral of toplvl2 is
	COMPONENT toplevel1
	PORT(
		clk : IN std_logic;
		push : IN std_logic;
		pop : IN std_logic;
		btn2 : IN std_logic;
		reset : IN std_logic;
		datain : IN std_logic_vector(7 downto 0);          
		dssenbl : OUT std_logic_vector(3 downto 0);
		mux8output : OUT std_logic_vector(7 downto 0);
		dataout : OUT std_logic_vector(7 downto 0);
		StackOVF : OUT std_logic
		);
		end component;
		
			COMPONENT singlepulsegen
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		input : IN std_logic;          
		output : OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL I0,I2,I1 : STD_LOGIC;
	
begin


	Inst_toplevel1: toplevel1 PORT MAP(
		clk => clk,
		push => I0,
		pop => I1,
		btn2 => I2,
		reset => reset,
		datain => datain,
		dssenbl => dssenbl,
		mux8output => mux8output,
		dataout => dataout,
		StackOVF => StackOVF
	);
	
		Inst_singlepulsegen: singlepulsegen PORT MAP(
		clk => clk,
		rst => reset,
		input => push,
		output => I0);
		
		Inst_singlepulsegen2: singlepulsegen PORT MAP(
		clk => clk,
		rst => reset,
		input => pop,
		output => I1);

		Inst_singlepulsegen3: singlepulsegen PORT MAP(
		clk => clk,
		rst => reset,
		input => btn2,
		output => I2);
		
end Behavioral;

