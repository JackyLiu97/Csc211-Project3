----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:04 11/29/2018 
-- Design Name: 
-- Module Name:    s1r1_latch - s1r1_latch_arch 
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
library UNISIM;
use UNISIM.VComponents.all;

entity s1r1_latch is
    Port ( R_L : in  STD_LOGIC;
           S_L : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end s1r1_latch;

architecture s1r1_latch_arch of s1r1_latch is

signal Q_signal, QN_signal : STD_LOGIC;
component NAND2 port(I0,I1: in STD_LOGIC; O: out STD_LOGIC); end component;

begin
	U1: NAND2 port map(S_L,QN_signal,Q_signal);
	U2: NAND2 port map(R_L,Q_Signal,QN_signal);
	U3: Q <= Q_signal;
	U4: QN <= QN_signal;
end s1r1_latch_arch;

