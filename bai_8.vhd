----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 10:22:27 AM
-- Design Name: 
-- Module Name: bai_8 - Behavioral
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
entity bai_8 is
  port (
    CLK : in  std_logic;
    Q   : out std_logic_vector(2 downto 0)
  );
end bai_8;

architecture rtl of bai_8 is
  component T_FF
    port (
      T     : in  std_logic;
      CLK   : in  std_logic;
      Q     : Buffer std_logic;
      Q_inv : Buffer std_logic
    );
  end component;

  signal q0, q1, q2 : std_logic;
  signal t0, t1, t2     : std_logic;
begin
  t2 <=  q1;

  FF0 : T_FF port map (T => '0', CLK => CLK, Q => q0, Q_inv => open);
  FF1 : T_FF port map (T => '1',  CLK => CLK,  Q => q1, Q_inv => open);
  FF2 : T_FF port map (T => t2,  CLK => CLK, Q => q2, Q_inv => open);

  Q <= q2 & q1 & q0;
end rtl;
