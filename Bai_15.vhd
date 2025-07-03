----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 11:33:55 PM
-- Design Name: 
-- Module Name: Bai_15 - Behavioral
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

entity Bai_15 is
  Port (clk : in std_logic;
         y: out std_logic_vector(2 downto 0 );
         Q : buffer std_logic_vector(2 downto 0);
          Q_inv : buffer std_logic_vector(2 downto 0) );
end Bai_15;

architecture Behavioral of Bai_15 is
signal J,K : std_logic_vector(2 downto 0);
component JK_FF is
Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
begin
J(0)<=Q(2) and Q_inv(1);
K(0)<='1';
K(1)<='1';
J(1)<=Q_inv(0);
J(2)<=Q(1) and Q_inv(0);
K(2)<= Q(1) or Q(0);
FF0: JK_FF port map( J=> J(0), K=>K(0), CLK=>clk, Q=>Q(0), Q_inv=>Q_inv(0));
FF1: JK_FF port map( J=> J(1), K=>K(1), CLK=>clk, Q=>Q(1), Q_inv=>Q_inv(1));
FF2: JK_FF port map( J=> J(2), K=>K(2), CLK=>clk, Q=>Q(2), Q_inv=>Q_inv(2));
y<=Q;

end Behavioral;
