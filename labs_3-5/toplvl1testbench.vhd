--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:47:54 03/28/2017
-- Design Name:   
-- Module Name:   /home/ISC/amanesis/Lab3_FINAL/toplvl1testbench.vhd
-- Project Name:  Lab3_FINAL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: toplevel1
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
 
ENTITY toplvl1testbench IS
END toplvl1testbench;
 
ARCHITECTURE behavior OF toplvl1testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT toplevel1
    PORT(
         clk : IN  std_logic;
         push : IN  std_logic;
         pop : IN  std_logic;
         reset : IN  std_logic;
         datain : IN  std_logic_vector(7 downto 0);
         dataout : OUT  std_logic_vector(7 downto 0);
         StackOVF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal push : std_logic := '0';
   signal pop : std_logic := '0';
   signal reset : std_logic := '0';
   signal datain : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal dataout : std_logic_vector(7 downto 0);
   signal StackOVF : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: toplevel1 PORT MAP (
          clk => clk,
          push => push,
          pop => pop,
          reset => reset,
          datain => datain,
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
		wait for 20 ns;	
		reset<='1';
		wait for 20 ns;
		reset<='0';
		wait for 100 ns;
		datain<="00001111";
		push<='1';
		wait for 100 ns;
		push<='0';
		wait for 100 ns;
		datain<="11110000";
		push<='1';
		wait for 100 ns;
		push<='0';
		wait for 100 ns;
		datain<="11111111";
		push<='1';
		wait for 100 ns;
		push<='0';
		wait for 100 ns;
		pop<='1';
		wait for 100 ns;
		pop<='0';
		wait for 100 ns;      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
