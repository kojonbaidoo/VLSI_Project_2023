----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.04.2023 13:50:55
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
 Port (
  A,B: in std_logic_vector(3 downto 0);
  Q,R: out std_logic_vector(3 downto 0)
  );
end main;

architecture Behavioral of main is

Component four_bit_divider is
    Port (
      A,B: in std_logic_vector(3 downto 0);
      Q,R: out std_logic_vector(3 downto 0)
    );
end Component;

signal a_input, b_input, q_output, r_output : std_logic_vector(3 downto 0);
begin
--    divider: eight_bit_divider port map(A0=>A0,A1=>A1,A2=>A2,A3=>A3,A4=>A4,A5=>A5,A6=>A6,A7=>A7,B0=>B0,B1=>B1,B2=>B2,B3=>B3,B4=>B4,B5=>B5,B6=>B6,B7=>B7,Y0=>Y0,Y1=>Y1,Y2=>Y2,Y3=>Y3,Y4=>Y4,Y5=>Y5,Y6=>Y6,Y7=>Y7,R0=>R0,R1=>R1,R2=>R2,R3=>R3,R4=>R4,R5=>R5,R6=>R6,R7=>R7);
a_input <= A;
b_input <= B;
Q <= q_output;
R <= r_output;

divider: four_bit_divider port map(A=>a_input,B=>b_input,Q=>q_output,R=>r_output);    
end Behavioral;
