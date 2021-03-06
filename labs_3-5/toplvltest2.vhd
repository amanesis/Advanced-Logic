--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:55:58 04/27/2017
-- Design Name:   
-- Module Name:   /home/ISC/gdaratsianos/Desktop/Lab3_FINAL/toplvltest2.vhd
-- Project Name:  Lab3_FINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: toplvl2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY toplvltest2 IS
END toplvltest2;
 
ARCHITECTURE behavior OF toplvltest2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT toplvl2
    PORT(
         clk : IN  std_logic;
         push : IN  std_logic;
         pop : IN  std_logic;
         reset : IN  std_logic;
         btn2 : IN  std_logic;
         datain : IN  std_logic_vector(7 downto 0);
         dssenbl : OUT  std_logic_vector(3 downto 0);
         mux8output : OUT  std_logic_vector(7 downto 0);
         dataout : OUT  std_logic_vector(7 downto 0);
         StackOVF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal push : std_logic := '0';
   signal pop : std_logic := '0';
   signal reset : std_logic := '0';
   signal btn2 : std_logic := '0';
   signal datain : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal dssenbl : std_logic_vector(3 downto 0);
   signal mux8output : std_logic_vector(7 downto 0);
   signal dataout : std_logic_vector(7 downto 0);
   signal StackOVF : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: toplvl2 PORT MAP (
          clk => clk,
          push => push,
          pop => pop,
          reset => reset,
          btn2 => btn2,
          datain => datain,
          dssenbl => dssenbl,
          mux8output => mux8output,
          dataout => dataout,
          StackOVF => StackOVF
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      -- hold reset state for 100 ns.
      reset<='1';
    wait for 100 ns;	
	reset<='0';
	
--	datain<="00000000";
--	push<='1';
--	wait for 100 ns;
--	push<='0';
	
--	for i in 0 to 32 loop
	
--	wait for 100 ns;	
--	datain<="00000000";
--	push<='1';
--	wait for 100 ns;
--	push<='0';
	
--	end loop;
	
--	wait for 100 ns;
--	reset<='1';
-- wait for 100 ns;	
--	reset<='0';
	
	for i in 0 to 2 loop
	
	wait for 100 ns;	
	datain<="00000000";
	push<='1';
	wait for 100 ns;
	push<='0';
	
	end loop;
	
	wait for 100ns;
	btn2<='1';
	wait for 100ns;
	btn2<='0';
	push<='1';
	wait for 100ns;
	push<='0';
	
	wait for 100ns;
	btn2<='1';
	wait for 100ns;
	btn2<='0';
	push<='1';
	wait for 100ns;
	push<='0';
	
	wait for 100ns;
	btn2<='1';
	wait for 100ns;
	btn2<='0';
	push<='1';
	wait for 100ns;
	push<='0';
	
	for i in 0 to 2 loop
	
	wait for 100 ns;	
	datain<="00000000";
	push<='1';
	wait for 100 ns;
	push<='0';
	
	end loop;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
		
   end process;

END;
