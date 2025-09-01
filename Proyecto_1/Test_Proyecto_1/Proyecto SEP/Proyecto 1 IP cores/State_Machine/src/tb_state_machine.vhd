library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

---------------------------------------------------
entity tb_state_machine is
end tb_state_machine;
---------------------------------------------------

architecture sim of tb_state_machine is
    -- DUT signals
    signal clk      : std_logic := '0';
    signal enter    : std_logic := '0';
    signal stop     : std_logic := '0';
    signal finaliza : std_logic := '0';
    signal state    : std_logic_vector(1 downto 0);

    constant clk_period : time := 10 ns;
begin
    -- Instantiate Unit Under Test (UUT)
    uut: entity work.state_machine
        port map (
            clk      => clk,
            enter    => enter,
            stop     => stop,
            finaliza => finaliza,
            state    => state
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
        -- Initially in idle ("00")
        wait for 20 ns;

        -- Move idle -> apuesta ("01")
        enter <= '1';
        wait for clk_period;
        enter <= '0';
        wait for 30 ns;

        -- Move apuesta -> ruleta ("10")
        enter <= '1';
        wait for clk_period;
        enter <= '0';
        wait for 30 ns;

        -- Move ruleta -> resultado ("11")
        stop <= '1';
        wait for clk_period;
        stop <= '0';
        wait for 30 ns;

        -- Stay in resultado until reset condition
        -- Reset condition: finaliza + enter = '1'
        finaliza <= '1';
        enter    <= '1';
        wait for clk_period;
        finaliza <= '0';
        enter    <= '0';
        wait for 30 ns;

        -- Now FSM should be back to idle ("00")

        -- End simulation
        wait for 50 ns;
        assert false report "Simulation finished" severity failure;
    end process;
end sim;
