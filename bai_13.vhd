----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 10:20:34 PM
-- Design Name: 
-- Module Name: Bai_12 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bai_13 is
  Port (
         clk : in std_logic;
         y: out std_logic_vector(3 downto 0 );
         Q : buffer std_logic_vector(3 downto 0);
          Q_inv : buffer std_logic_vector(3 downto 0));
end bai_13;

architecture Behavioral of bai_13 is
signal T : std_logic_vector(4 downto 0);
component T_FF is
Port (
          T     : in  std_logic;
    CLK   : in  std_logic;
    Q     : Buffer std_logic;
    Q_inv : Buffer std_logic
  );
          end component;
begin

T(2)<= Q(1) ;
T(3)<= Q(2) and Q(1) ;
FF0: T_FF port map( T=> '0', CLK=>clk, Q=>Q(0),Q_inv=>Q_inv(0));
FF1: T_FF port map( T=> '1', CLK=>clk, Q=>Q(1),Q_inv=>Q_inv(1));
FF2: T_FF port map( T=> T(2), CLK=>clk, Q=>Q(2),Q_inv=>Q_inv(2));
FF3: T_FF port map( T=> T(3), CLK=>clk, Q=>Q(3),Q_inv=>Q_inv(3));
y<=Q;
end Behavioral;
