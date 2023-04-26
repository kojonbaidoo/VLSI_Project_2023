----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.04.2023 14:18:33
-- Design Name: 
-- Module Name: four_bit_divider_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_divider_tb is
--  Port ( );
end four_bit_divider_tb;

architecture Behavioral of four_bit_divider_tb is
    Component four_bit_divider is
      Port (
      A,B: in std_logic_vector(3 downto 0);
      Q,R: out std_logic_vector(3 downto 0)
      );
    end Component four_bit_divider;

signal clk: std_logic;
signal A_bits : std_logic_vector(3 downto 0);
signal B_bits : std_logic_vector(3 downto 0);
signal Y_bits : std_logic_vector(3 downto 0);
signal R_bits : std_logic_vector(3 downto 0);
begin

UUT: four_bit_divider port map(A=>A_bits, B=>B_bits, Q=>Y_bits, R=>R_bits);
process
begin
    clk <= '0';
    wait for 1 ps;
    clk <= '1';
    wait for 1 ps;
end process;

process
    begin
	--12 / 13, Result: 0, Refour_bit_dividerder: 12
	A_bits<="1100";
	B_bits<="1101";
	wait for 2 ps;

	--8 / 13, Result: 0, Refour_bit_dividerder: 8
	A_bits<="1000";
	B_bits<="1101";
	wait for 2 ps;

	--15 / 1, Result: 15, Refour_bit_dividerder: 0
	A_bits<="1111";
	B_bits<="0001";
	wait for 2 ps;

	--8 / 12, Result: 0, Refour_bit_dividerder: 8
	A_bits<="1000";
	B_bits<="1100";
	wait for 2 ps;

	--1 / 14, Result: 0, Refour_bit_dividerder: 1
	A_bits<="0001";
	B_bits<="1110";
	wait for 2 ps;

	--15 / 7, Result: 2, Refour_bit_dividerder: 1
	A_bits<="1111";
	B_bits<="0111";
	wait for 2 ps;

	--10 / 6, Result: 1, Refour_bit_dividerder: 4
	A_bits<="1010";
	B_bits<="0110";
	wait for 2 ps;

	--10 / 10, Result: 1, Refour_bit_dividerder: 0
	A_bits<="1010";
	B_bits<="1010";
	wait for 2 ps;

	--1 / 12, Result: 0, Refour_bit_dividerder: 1
	A_bits<="0001";
	B_bits<="1100";
	wait for 2 ps;

	--9 / 2, Result: 4, Refour_bit_dividerder: 1
	A_bits<="1001";
	B_bits<="0010";
	wait for 2 ps;

	--14 / 13, Result: 1, Refour_bit_dividerder: 1
	A_bits<="1110";
	B_bits<="1101";
	wait for 2 ps;

	--4 / 6, Result: 0, Refour_bit_dividerder: 4
	A_bits<="0100";
	B_bits<="0110";
	wait for 2 ps;

	--1 / 12, Result: 0, Refour_bit_dividerder: 1
	A_bits<="0001";
	B_bits<="1100";
	wait for 2 ps;

	--5 / 11, Result: 0, Refour_bit_dividerder: 5
	A_bits<="0101";
	B_bits<="1011";
	wait for 2 ps;

	--12 / 2, Result: 6, Refour_bit_dividerder: 0
	A_bits<="1100";
	B_bits<="0010";
	wait for 2 ps;

	--7 / 3, Result: 2, Refour_bit_dividerder: 1
	A_bits<="0111";
	B_bits<="0011";
	wait for 2 ps;

	--5 / 3, Result: 1, Refour_bit_dividerder: 2
	A_bits<="0101";
	B_bits<="0011";
	wait for 2 ps;

	--7 / 6, Result: 1, Refour_bit_dividerder: 1
	A_bits<="0111";
	B_bits<="0110";
	wait for 2 ps;

	--12 / 5, Result: 2, Refour_bit_dividerder: 2
	A_bits<="1100";
	B_bits<="0101";
	wait for 2 ps;

	--11 / 6, Result: 1, Refour_bit_dividerder: 5
	A_bits<="1011";
	B_bits<="0110";
	wait for 2 ps;

    end process;
end Behavioral;


