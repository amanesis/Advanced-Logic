--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:49:31 05/15/2017
-- Design Name:   
-- Module Name:   /home/ISC/gdaratsianos/.gvfs/gdaratsianos on smb-1.isc.tuc.gr/My Videos/Lab3_FINAL/test_addsub.vhd
-- Project Name:  Lab3_FINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add_sub
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
 
ENTITY test_addsub IS
END test_addsub;
 
ARCHITECTURE behavior OF test_addsub IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add_sub
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         AddSub : IN  std_logic;
         ASout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal AddSub : std_logic := '0';

 	--Outputs
   signal ASout : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add_sub PORT MAP (
          A => A,
          B => B,
          AddSub => AddSub,
          ASout => ASout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
AddSub <= '0';
A <= "00000001";
B <= "00000010";

  wait for 100 ns;	
AddSub <= '1';
A <= "11110000";
B <= "11101000";
      -- insert stimulus here 

      wait;
   end process;

END;
