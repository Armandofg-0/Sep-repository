library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------------
entity tb_apuesta is
end tb_apuesta;
-------------------------------------------------------

architecture sim of tb_apuesta is
  signal clk   : std_logic := '0';
  signal sw    : std_logic_vector(3 downto 0) := (others => '0');
  signal guess : std_logic_vector(3 downto 0);

  -- Clock period
  constant clk_period : time := 10 ns;

begin
  -- Instantiate Unit Under Test (UUT)
  uut: entity work.apuesta
    port map (
      clk   => clk,
      sw    => sw,
      guess => guess
    );

  -- Clock process
  clk_process : process
  begin
    while true loop
      clk <= '0';
      wait for clk_period / 2;
      clk <= '1';
      wait for clk_period / 2;
    end loop;
  end process;

  -- Stimulus process
  stim_proc : process
  begin
    -- Press switch 0
    wait for 20 ns;
    sw(0) <= '1';
    wait for clk_period;
    sw(0) <= '0';

    -- Press switch 1
    wait for 20 ns;
    sw(1) <= '1';
    wait for clk_period;
    sw(1) <= '0';

    -- Press switch 2
    wait for 20 ns;
    sw(2) <= '1';

    -- Press switch 3
    wait for 20 ns;
    sw(3) <= '1';
    wait for clk_period;
    sw(3) <= '0';

    -- Finish simulation
    wait for 50 ns;
    assert false report "Simulation finished" severity failure;
  end process;

end sim;
