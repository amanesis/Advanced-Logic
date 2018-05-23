----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:44:03 05/15/2017 
-- Design Name: 
-- Module Name:    S_UNIT_FULL - Behavioral 
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

entity S_UNIT8 is
port (CIN : IN STD_LOGIC;
		A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		C8 : OUT STD_LOGIC);
end S_UNIT8;

architecture Behavioral of S_UNIT8 is

COMPONENT s_unit4
port (CIN : IN STD_LOGIC;
		A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		C3 : OUT STD_LOGIC);
END COMPONENT;

SIGNAL CR : STD_LOGIC;
begin

SU1 : s_unit4
PORT MAP (
CIN=>CIN, 
A(3 DOWNTO 0)=>A(3 DOWNTO 0), 
B(3 DOWNTO 0)=>B(3 DOWNTO 0), 
S(3 DOWNTO 0)=>S(3 DOWNTO 0), 
C3=>CR);

SU2 : s_unit4
PORT MAP (CIN=>CR,
A(3 DOWNTO 0)=>A(7 DOWNTO 4), 
B(3 DOWNTO 0)=>B(7 DOWNTO 4), 
S(3 DOWNTO 0)=>S(7 DOWNTO 4), 
C3=>C8);

end Behavioral;

