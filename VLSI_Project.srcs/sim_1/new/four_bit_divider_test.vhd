----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.04.2023 14:07:14
-- Design Name: 
-- Module Name: four_bit_divider_test - Behavioral
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

entity four_bit_divider_test is
--  Port ( );
end four_bit_divider_test;

architecture Behavioral of four_bit_divider_test is
    Component four_bit_divider is
      Port (
      A0,A1,A2,A3,B0,B1,B2,B3: in std_logic;
      Y0,Y1,Y2,Y3,R0,R1,R2,R3: out std_logic
      );
    end Component four_bit_divider;

signal clk: std_logic;
signal A_bits : std_logic_vector(3 downto 0);
signal B_bits : std_logic_vector(3 downto 0);
signal Y_bits : std_logic_vector(3 downto 0);
signal R_bits : std_logic_vector(3 downto 0);
begin

UUT: four_bit_divider port map(A0=>A_bits(0),A1=>A_bits(1),A2=>A_bits(2),A3=>A_bits(3),
                               B0=>B_bits(0),B1=>B_bits(1),B2=>B_bits(2),B3=>B_bits(3),
                               Y0=>Y_bits(0),Y1=>Y_bits(1),Y2=>Y_bits(2),Y3=>Y_bits(3),
                               R0=>R_bits(0),R1=>R_bits(1),R2=>R_bits(2),R3=>R_bits(3));
process
begin
    clk <= '0';
    wait for 1ps;
    clk <= '1';
    wait for 1ps;
end process;

process
    begin
        A_bits<="0100";
        B_bits<="0010";
        wait for 2ps;
        
        A_bits<="0101";
        B_bits<="0010";
        wait for 2ps;
    end process;
end Behavioral;
