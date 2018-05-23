--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:15:20 03/27/2017
-- Design Name:   
-- Module Name:   /home/ISC/amanesis/Lab3_FINAL/comparatorTEST.vhd
-- Project Name:  Lab3_FINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparator
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
 
ENTITY comparatorTEST IS
END comparatorTEST;
 
ARCHITECTURE behavior OF comparatorTEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         A : IN  std_logic_vector(4 downto 0);
         B : IN  std_logic_vector(4 downto 0);
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(4 downto 0) := (others => '0');
   signal B : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
---   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          A => A,
          B => B,
          C => C
        );

   -- Clock process definitions
  -- <clock>_process :process
  -- begin
--		<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	A<="00000";
	B<="00000";
	
	wait for 100 ns;
	
	A<="01010";
	B<="11111";
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
