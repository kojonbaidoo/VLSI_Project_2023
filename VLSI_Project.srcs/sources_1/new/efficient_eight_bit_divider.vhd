----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.04.2023 01:46:47
-- Design Name: 
-- Module Name: efficient eight_bit_divider - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity efficient_eight_bit_divider is
  Port (A,B: in std_logic_vector(7 downto 0);
        Q,R: out std_logic_vector(7 downto 0)
        );
end efficient_eight_bit_divider;

architecture Behavioral of efficient_eight_bit_divider is


begin
    process(A,B)
    
    variable temp: std_logic_vector(7 downto 0) := "00000000";
    variable quotient: std_logic_vector(7 downto 0):= "00000000";
    variable remainder: std_logic_vector(7 downto 0):= "00000000";

    begin
        for i in 0 to 7 loop
--            temp := (temp(6 downto 0) & '0') | (1(i downto 0) & A) srl (7 - i);
            temp := (temp(6 downto 0) | (1 sll (7-i) & A) srl (7 - i);
            if((temp - B) >= 0) then
                quotient := ('0' & quotient(7 downto 1)) | ("00000001");
                remainder := temp - A;
                temp := remainder;
            else
                quotient := (quotient(6 downto 0) & '0') & "11111110";
                remainder := temp; 
            end if;
        end loop;
        Q <= quotient;
        R <= remainder;
    end process;
end Behavioral;
