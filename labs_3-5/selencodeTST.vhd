--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:57:56 03/29/2017
-- Design Name:   
-- Module Name:   /home/ISC/amanesis/.gvfs/amanesis on ls-1.isc.tuc.gr/public_html/Lab3_FINAL/selencodeTST.vhd
-- Project Name:  Lab3_FINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: selEncoder
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
 
ENTITY selencodeTST IS
END selencodeTST;
 
ARCHITECTURE behavior OF selencodeTST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT selEncoder
    PORT(
         fsm2out : IN  std_logic_vector(3 downto 0);
         sel_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal fsm2out : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sel_out : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: selEncoder PORT MAP (
          fsm2out => fsm2out,
          sel_out => sel_out
        );

   -- Clock process definitions
--   <clock>_process :process
  -- begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
--		-wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	fsm2out<="1111";
	
	 wait for 100 ns;	
	fsm2out<="1011";
	 wait for 100 ns;	
	fsm2out<="1101";
	 wait for 100 ns;	
	fsm2out<="1110";
    --  wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
