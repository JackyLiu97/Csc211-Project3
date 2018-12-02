--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:18:38 12/01/2018
-- Design Name:   
-- Module Name:   /home/student/Desktop/lab3test/d_latch_arch.vhd
-- Project Name:  lab3test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_latch
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
 
ENTITY d_latch_arch IS
END d_latch_arch;
 
ARCHITECTURE behavior OF d_latch_arch IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_latch
    PORT(
         C : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_latch PORT MAP (
          C => C,
          D => D,
          Q => Q,
          QN => QN
        );

   -- Stimulus process
   stim_proc: process
   begin		
		d <= '0'; c <= '1';
		wait for 50 ns;
		d <= '1'; c <= '1';
		wait for 50 ns;
		d <= '0'; c <= '0';
		wait for 50 ns;
		d <= '1'; c <= '0';
		wait for 50 ns;
		d <= '0'; c <= '1';
		wait for 50 ns;
		d <= '1'; c <= '1';
      wait;
   end process;

END;
