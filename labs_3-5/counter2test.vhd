--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:31:06 03/28/2017
-- Design Name:   
-- Module Name:   /home/ISC/amanesis/Lab3_FINAL/counter2test.vhd
-- Project Name:  Lab3_FINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter2
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
 
ENTITY counter2test IS
END counter2test;
 
ARCHITECTURE behavior OF counter2test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter2
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         enable : IN  std_logic;
         cout : OUT  std_logic_vector(16 downto 0);
         done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal cout : std_logic_vector(16 downto 0);
   signal done : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter2 PORT MAP (
          clock => clock,
          reset => reset,
          enable => enable,
          cout => cout,
          done => done
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	reset<='1';
	wait for 100 ns;
	reset<='0';
	enable<='1';
      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
