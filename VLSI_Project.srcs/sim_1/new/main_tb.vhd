----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.04.2023 14:18:33
-- Design Name: 
-- Module Name: main_tb - Behavioral
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

entity main_tb is
--  Port ( );
end main_tb;

architecture Behavioral of main_tb is
    Component four_bit_divider is
      Port (
      A0,A1,A2,A3,B0,B1,B2,B3: in std_logic;
      Y0,Y1,Y2,Y3,R0,R1,R2,R3: out std_logic
      );
    end Component four_bit_divider;

signal clk: std_logic;
signal A_bits : std_logic_vector(7 downto 0);
signal B_bits : std_logic_vector(7 downto 0);
signal Y_bits : std_logic_vector(7 downto 0);
signal R_bits : std_logic_vector(7 downto 0);
begin

UUT: four_bit_divider port map(A0=>A(0),A1=>A(1),A2=>A(2),A3=>A(3),A4=>A(4),A5=>A(5),A6=>A(6),A7=>A(7),
                                B0=>B(0),B1=>B(1),B2=>B(2),B3=>B(3),B4=>B(4),B5=>B(5),B6=>B(6),B7=>B(7),
                                Y0=>Y(0),Y1=>Y(1),Y2=>Y(2),Y3=>Y(3),Y4=>Y(4),Y5=>Y(5),Y6=>Y(6),Y7=>Y(7),
                                R0=>R(0),R1=>R(1),R2=>R(2),R3=>R(3),R4=>R(4),R5=>R(5),R6=>R(6),R7=>R(7)
                                );
process
begin
    clk <= '0';
    wait for 1 ps;
    clk <= '1';
    wait for 1 ps;
end process;

process
    begin
	--12 / 13, Result: 0, Remainder: 12
	A_bits<="1100";
	B_bits<="1101";
	wait for 2 ps;

	--8 / 13, Result: 0, Remainder: 8
	A_bits<="1000";
	B_bits<="1101";
	wait for 2 ps;

	--15 / 1, Result: 15, Remainder: 0
	A_bits<="1111";
	B_bits<="0001";
	wait for 2 ps;

	--8 / 12, Result: 0, Remainder: 8
	A_bits<="1000";
	B_bits<="1100";
	wait for 2 ps;

	--1 / 14, Result: 0, Remainder: 1
	A_bits<="0001";
	B_bits<="1110";
	wait for 2 ps;

	--15 / 7, Result: 2, Remainder: 1
	A_bits<="1111";
	B_bits<="0111";
	wait for 2 ps;

	--10 / 6, Result: 1, Remainder: 4
	A_bits<="1010";
	B_bits<="0110";
	wait for 2 ps;

	--10 / 10, Result: 1, Remainder: 0
	A_bits<="1010";
	B_bits<="1010";
	wait for 2 ps;

	--1 / 12, Result: 0, Remainder: 1
	A_bits<="0001";
	B_bits<="1100";
	wait for 2 ps;

	--9 / 2, Result: 4, Remainder: 1
	A_bits<="1001";
	B_bits<="0010";
	wait for 2 ps;

	--14 / 13, Result: 1, Remainder: 1
	A_bits<="1110";
	B_bits<="1101";
	wait for 2 ps;

	--4 / 6, Result: 0, Remainder: 4
	A_bits<="0100";
	B_bits<="0110";
	wait for 2 ps;

	--1 / 12, Result: 0, Remainder: 1
	A_bits<="0001";
	B_bits<="1100";
	wait for 2 ps;

	--5 / 11, Result: 0, Remainder: 5
	A_bits<="0101";
	B_bits<="1011";
	wait for 2 ps;

	--12 / 2, Result: 6, Remainder: 0
	A_bits<="1100";
	B_bits<="0010";
	wait for 2 ps;

	--7 / 3, Result: 2, Remainder: 1
	A_bits<="0111";
	B_bits<="0011";
	wait for 2 ps;

	--5 / 3, Result: 1, Remainder: 2
	A_bits<="0101";
	B_bits<="0011";
	wait for 2 ps;

	--7 / 6, Result: 1, Remainder: 1
	A_bits<="0111";
	B_bits<="0110";
	wait for 2 ps;

	--12 / 5, Result: 2, Remainder: 2
	A_bits<="1100";
	B_bits<="0101";
	wait for 2 ps;

	--11 / 6, Result: 1, Remainder: 5
	A_bits<="1011";
	B_bits<="0110";
	wait for 2 ps;

    end process;
end Behavioral;


end Behavioral;
