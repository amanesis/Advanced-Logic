--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:16:46 03/29/2017
-- Design Name:   
-- Module Name:   /home/ISC/amanesis/.gvfs/amanesis on ls-1.isc.tuc.gr/public_html/Lab3_FINAL/testFSM2.vhd
-- Project Name:  Lab3_FINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ssdFSM
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
 
ENTITY testFSM2 IS
END testFSM2;
 
ARCHITECTURE behavior OF testFSM2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ssdFSM
    PORT(
         CLK : IN  std_logic;
         counter_done : IN  std_logic;
         empty : IN  std_logic;
         full : IN  std_logic;
         s_ovf : IN  std_logic;
         reset : IN  std_logic;
         rstcount : OUT  std_logic;
         ssd_ctrl : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal counter_done : std_logic := '0';
   signal empty : std_logic := '0';
   signal full : std_logic := '0';
   signal s_ovf : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal rstcount : std_logic;
   signal ssd_ctrl : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ssdFSM PORT MAP (
          CLK => CLK,
          counter_done => counter_done,
          empty => empty,
          full => full,
          s_ovf => s_ovf,
          reset => reset,
          rstcount => rstcount,
          ssd_ctrl => ssd_ctrl
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	reset<='0';
	empty<='1';
	full<='0';
	s_ovf<='0';
	wait for 100 ns;
	reset<='1';
	wait for 100 ns;
	reset<='0';
	wait for 100 ns;
	counter_done<='1';
	empty<='0';
	wait for 100 ns;
	counter_done<='0';
	wait for 100 ns;
	counter_done<='1';
	full<='1';
	wait for 100 ns;
	counter_done<='0';
	wait for 100 ns;
	counter_done<='1';
	s_ovf<='1';
	wait for 100 ns;
	full<='0';
	wait for 100 ns;
	reset<='1';
	empty<='1';
	wait for 100 ns;
	
	
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
