----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:00 12/01/2018 
-- Design Name: 
-- Module Name:    d_latch - d_latch_arch 
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

entity d_latch is
    Port ( C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end d_latch;

architecture d_latch_arch of d_latch is
signal S_signal, R_signal: STD_LOGIC;
signal Q_signal, QN_signal: STD_LOGIC;
signal D_L: STD_LOGIC; 
component INV port(I: in STD_LOGIC; O: out STD_LOGIC); end component; 
component NAND2 port(I0,I1: in STD_LOGIC; O: out STD_LOGIC); end component;
begin
U1: INV port map(D, D_L); -- Inverted D_L
U2: NAND2 port map(D,C, S_signal);
U3: NAND2 port map(D_L,C, R_signal);
U4: NAND2 port map(S_signal, QN_signal, Q_signal);
U5: NAND2 port map(R_signal, Q_signal, QN_Signal);
U6: Q <= Q_signal;
U7: QN <= QN_Signal;
end d_latch_arch;

