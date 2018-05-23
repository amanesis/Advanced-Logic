--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:46:47 03/28/2017
-- Design Name:   
-- Module Name:   /home/ISC/amanesis/Lab3_FINAL/c2tst.vhd
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
 
ENTITY c2tst IS
END c2tst;
 
ARCHITECTURE behavior OF c2tst IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter2
    PORT(
         clock : IN  std_logic;
         clear : IN  std_logic;
         count : IN  std_logic;
         done : OUT  std_logic;
         cout : OUT  std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal clear : std_logic := '0';
   signal count : std_logic := '0';

 	--Outputs
   signal done : std_logic;
   signal cout : std_logic_vector(16 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter2 PORT MAP (
          clock => clock,
          clear => clear,
          count => count,
          done => done,
          cout => cout
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
clear<='1';
      wait for 100 ns;	
		clear<='0';
		
count<='1';
      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
