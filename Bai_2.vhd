----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 06:05:55 PM
-- Design Name: 
-- Module Name: Bai_2 - Behavioral
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

entity Bai_2 is
  Port ( A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        F : out std_logic);
end Bai_2;

  architecture Behavioral of Bai_2 is

begin

F<= not((not(B or C)) or not((not A or (not(not B or not C)))));
end Behavioral;
