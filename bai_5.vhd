library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bai_5 is
  port (
    CLK : in  std_logic;
    Q   : out std_logic_vector(2 downto 0)
  );
end bai_5;

architecture rtl of bai_5 is
  component T_FF
    port (
      T     : in  std_logic;
      CLK   : in  std_logic;
      Q     : Buffer std_logic;
      Q_inv : Buffer std_logic
    );
  end component;

  signal q0, q1, q2 : std_logic;
  signal t1, t2     : std_logic;
begin
  t1 <= (not q0 and not q2 and q1) or (q2 and not q1 and not q0);
  t2 <= not q1 and not q0;

  ff0 : T_FF port map (T => '1', CLK => CLK, Q => q0, Q_inv => open);
  ff1 : T_FF port map (T => t1,  CLK => CLK, Q => q1, Q_inv => open);
  ff2 : T_FF port map (T => t2,  CLK => CLK, Q => q2, Q_inv => open);

  Q <= q2 & q1 & q0;
end rtl;