----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 08:12:22 PM
-- Design Name: 
-- Module Name: D_FF - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity D_FF is
  Port (
          D : in std_logic;
          CLK : in std_logic;
          Q : Buffer std_logic;
          Q_inv : Buffer std_logic );
end D_FF;

architecture Behavioral of D_FF is
signal Q_tmp : STD_LOGIC := '0';
begin
process(CLK)
    begin
        if falling_edge(CLK) then
        Q_tmp <= D;
        end if;
        end process;
  Q<=Q_tmp;
  Q_inv<= not Q_tmp;
end Behavioral;
