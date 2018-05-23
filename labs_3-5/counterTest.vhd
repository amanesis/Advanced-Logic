--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:38:48 03/27/2017
-- Design Name:   
-- Module Name:   /home/ISC/amanesis/Downloads/Lab3/counterTest.vhd
-- Project Name:  Lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
 
ENTITY counterTest IS
END counterTest;
 
ARCHITECTURE behavior OF counterTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         Clock : IN  std_logic;
         reset : IN  std_logic;
         enable : IN  std_logic;
         load : IN  std_logic;
         UD : IN  std_logic;
         outcount : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';
   signal load : std_logic := '0';
   signal UD : std_logic := '0';

 	--Outputs
   signal outcount : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          Clock => Clock,
          reset => reset,
          enable => enable,
          load => load,
          UD => UD,
          outcount => outcount
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;			reset<='1';
		load<='1';
		UD<='1';
		enable<='1';
		wait for 100 ns;
		reset<='0';
		load<='0';      wait for Clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
