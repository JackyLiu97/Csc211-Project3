--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:13:12 12/01/2018
-- Design Name:   
-- Module Name:   /home/student/Desktop/lab3test/sr_latch_en_testbench.vhd
-- Project Name:  lab3test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sr_latch_en
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
 
ENTITY sr_latch_en_testbench IS
END sr_latch_en_testbench;
 
ARCHITECTURE behavior OF sr_latch_en_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sr_latch_en
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         C : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sr_latch_en PORT MAP (
          S => S,
          R => R,
          C => C,
          Q => Q,
          QN => QN
        );

   -- Stimulus process
   stim_proc: process
   begin		
		-- c is asserted
		s <= '0'; r <= '1'; c <= '1';
		wait for 50 ns;
		s <= '0'; r <= '0'; c <= '1';
		wait for 50 ns;
		s <= '1'; r <= '0'; c <= '1';
		wait for 50 ns;
		s <= '0'; r <= '0'; c <= '1';
		wait for 50 ns;
		
		-- c is negated
		s <= '0'; r <= '1'; c <= '0';
		wait for 50 ns;
		s <= '0'; r <= '0'; c <= '0';
		wait for 50 ns;
		s <= '1'; r <= '0'; c <= '0';
		wait for 50 ns;
		s <= '0'; r <= '0'; c <= '0';
		wait for 50 ns;
		s <= '1'; r <= '1'; c <= '0';
		wait for 50 ns;
		
		-- c is agained asserted
		s <= '1'; r <= '1'; c <= '1';
		wait for 50 ns;
		
      wait;
   end process;

END;
