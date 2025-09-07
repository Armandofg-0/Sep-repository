library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-----------------------------------------------------------------
entity tb_ruleta is
end tb_ruleta;
-----------------------------------------------------------------
architecture Behavioral of tb_ruleta is

    -- Señales del DUT
    signal special_clk_out : std_logic := '0';
    signal stop            : std_logic := '0';
    signal result          : std_logic_vector(3 downto 0);
    signal state           : std_logic_vector(1 downto 0);

    constant PERIODO : time := 10 ns; -- 100 MHz

    -- Componente bajo prueba
    component ruleta is
        Port ( 
            state           : in  std_logic_vector(1 downto 0);
            special_clk_out : in  std_logic;
            stop            : in  std_logic;
            result          : out std_logic_vector(3 downto 0)
        );
    end component;

begin
    -- Instancia del DUT
    dut: ruleta
        port map (
            state           => state,
            special_clk_out => special_clk_out,
            stop            => stop,
            result          => result
        );

    --=========================
    -- Generador de reloj
    --=========================
    clk_gen: process
    begin
        special_clk_out <= '1';
        wait for PERIODO/2;
        special_clk_out <= '0';
        wait for PERIODO/2;
    end process;

    --=========================
    -- Estímulos de prueba
    --=========================
    stim_proc: process
    begin
        --------------------------------------------------------
        -- Caso 1: Estado inicial → ruleta debería quedar en 0001
        --------------------------------------------------------
        state <= "01";
        stop  <= '0';
        wait for 50 ns;

        --------------------------------------------------------
        -- Caso 2: Transición 01 -> 10 → se reinicia a 0001
        --------------------------------------------------------
        state <= "10"; -- transición
        wait for 50 ns;

        --------------------------------------------------------
        -- Caso 3: Ruleta avanza mientras stop = 0
        --------------------------------------------------------
        stop <= '0';
        wait for 100 ns;

        --------------------------------------------------------
        -- Caso 4: Stop activo → la ruleta se queda congelada
        --------------------------------------------------------
        stop <= '1';
        wait for 100 ns;


        --------------------------------------------------------
        -- Caso 5: Estado distinto (11) → ruleta debería quedarse fija
        --------------------------------------------------------
        state <= "11";
        wait for 100 ns;

        --------------------------------------------------------
        -- Caso 6: Nueva transición 01 -> 10 → vuelve a 0001
        --------------------------------------------------------
        state <= "01";
        wait for 40 ns;
        state <= "10"; -- transición otra vez
        stop  <= '0';
        wait for 100 ns;

        --------------------------------------------------------
        -- Fin de simulación
        --------------------------------------------------------
        wait;
    end process;

end Behavioral;
