--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:41:17 11/29/2018
-- Design Name:   
-- Module Name:   /home/student/Desktop/lab3test/s1r1_testbench.vhd
-- Project Name:  lab3test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: s1r1_latch
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
 
ENTITY s1r1_testbench IS
END s1r1_testbench;
 
ARCHITECTURE behavior OF s1r1_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT s1r1_latch
    PORT(
         R_L : IN  std_logic;
         S_L : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R_L : std_logic := '0';
   signal S_L : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: s1r1_latch PORT MAP (
          R_L => R_L,
          S_L => S_L,
          Q => Q,
          QN => QN
        );


   -- Stimulus process
   stim_proc: process
   begin	
		wait for 50ns;
     S_L <= '0'; R_L <= '0';
	  wait for 50 ns;
	  S_L <= '0'; R_L <= '1';
	  wait for 50 ns;
	  S_L <= '1'; R_L <= '1';
	  wait for 50 ns;
	  S_L <= '1'; R_L <= '0';
	  wait for 50 ns;
	  S_L <= '1'; R_L <= '1';
	  wait for 50 ns;
	  S_L <= '0'; R_L <= '0';
	  wait for 50 ns;


      wait;
   end process;

END;
