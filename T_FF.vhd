----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 09:49:30 PM
-- Design Name: 
-- Module Name: T_FF - Behavioral
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

entity T_FF is
  port (
    T     : in  std_logic;
    CLK   : in  std_logic;
    Q     : Buffer std_logic;
    Q_inv : Buffer std_logic
  );
end T_FF;

architecture rtl of T_FF is
  signal Q_tmp : std_logic := '0';
begin
  process(CLK)
    begin
        if falling_edge(CLK) then
        if T='0' then
        Q_tmp<=Q_tmp;
        elsif T='1' then
        Q_tmp<= not Q_tmp;
        end if;
        end if;
        end process;
  Q<=Q_tmp;
  Q_inv<= not Q_tmp;
end rtl;
