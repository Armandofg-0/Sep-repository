library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-------------------------------------------------
entity clk_manager is
    generic (
        CLK_FREQ_HZ : integer := 125_000_000  -- frecuencia del clk principal
    );
    port (
        state           : in  std_logic_vector(1 downto 0); 
        clk             : in  std_logic;
        btn_3            : in  std_logic; 
        special_clk_out : out std_logic;
        stop            : out std_logic := '0';
        difficulty      : in std_logic_vector(3 downto 0)
    );
end clk_manager;
-------------------------------------------------
architecture Behavioral of clk_manager is

    -- Constantes base (calculadas de manera conveninte)
    constant MINIMUM_BASE : integer := CLK_FREQ_HZ / 16;   -- antes 7_812_500 con 125MHz
    constant STEP_BASE    : integer := CLK_FREQ_HZ / 341;  -- antes 366_210 con 125MHz
    constant MAX_LIMIT    : integer := CLK_FREQ_HZ / 4;    -- antes 31_250_000 con 125MHz

    -- Señales a configurar según dificultad
    signal minimum : integer;
    signal step    : integer;

begin

    -----------------------------------------------------------------
    -- Configuración según dificultad (1000 fácil ? 1111 muy difícil)
    -----------------------------------------------------------------
    with difficulty select minimum <=
        MINIMUM_BASE                     when "1000",  -- Fácil
        (MINIMUM_BASE * 3) / 4           when "1100",  -- Medio (0.75)
        (MINIMUM_BASE * 2) / 3           when "1110",  -- Difícil (0.666...)
        MINIMUM_BASE / 2                 when others;  -- Muy difícil (0.5)

    with difficulty select step <=
        STEP_BASE                        when "1000",  -- Fácil
        (STEP_BASE * 5) / 4              when "1100",  -- Medio (1.25)
        (STEP_BASE * 7) / 4              when "1110",  -- Difícil (1.75)
        STEP_BASE * 2                    when others;  -- Muy difícil (2.0)

    --------------------
    -- Proceso principal
    --------------------
    process(clk)
        variable special_clk : std_logic := '0';
        variable counter     : integer := 0;
        variable maximum     : integer := 0;
        variable running     : boolean := false;
        variable up_r        : std_logic := '0';
    begin
        if rising_edge(clk) then
            -- salida por defecto
            special_clk_out <= special_clk;

            -----------------------------------------
            -- Reset de valores cuando state /= "10"
            -----------------------------------------
            if state /= "10" then
                counter     := 0;
                maximum     := MAX_LIMIT;
                special_clk := '0';
                stop        <= '0';
                special_clk_out <= '0';
                running     := false; 
                up_r        := '0';

            -----------------------------------------------------------------
            -- Funcionamiento normal cuando state = "10"
            -----------------------------------------------------------------
            else
                -- detectar flanco de btn_3
                if (btn_3 = '1' and up_r = '0') then
                    running := true;
                end if;
                up_r := btn_3;

                -- solo avanza si running=true
                if running then
                    if (btn_3 = '1') then
                        -- AUMENTANDO VELOCIDAD
                        if (counter = maximum) then
                            counter := 0;
                            special_clk := not special_clk;

                            if (maximum >= minimum) then
                                maximum := maximum - step;
                            end if;
                        else
                            counter := counter + 1;
                        end if;
                    else
                        -- DISMINUYENDO VELOCIDAD
                        if (maximum >= MAX_LIMIT) then
                            stop <= '1';
                        else
                            if (counter = maximum) then
                                counter := 0;
                                special_clk := not special_clk;

                                if (maximum <= MAX_LIMIT) then
                                    maximum := maximum + step;
                                end if;
                            else
                                counter := counter + 1;
                            end if;
                        end if;
                    end if;
                end if; -- running
            end if; -- state
        end if; -- clk
    end process;

end Behavioral;
