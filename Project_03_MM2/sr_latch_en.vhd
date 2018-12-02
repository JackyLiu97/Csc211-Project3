----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:29 12/01/2018 
-- Design Name: 
-- Module Name:    sr_latch_en - sr_latch_en_arch 
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

entity sr_latch_en is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end sr_latch_en;

architecture sr_latch_en_arch of sr_latch_en is
signal S_signal, R_signal: STD_LOGIC;
signal Q_signal, QN_signal: STD_LOGIC;
component NAND2 port(I0,I1: in STD_LOGIC; O: out STD_LOGIC); end component;
begin
U1: NAND2 port map(C,S, S_signal);
U2: NAND2 port map(C,R, R_signal);
U3: NAND2 port map(S_signal, QN_signal, Q_signal);
U4: NAND2 port map(R_signal, Q_signal, QN_signal);
U5: Q <= Q_signal;
U6: QN <= QN_signal;
end sr_latch_en_arch;

