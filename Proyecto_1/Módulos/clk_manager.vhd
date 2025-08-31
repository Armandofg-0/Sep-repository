library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-------------------------------------------------
entity clk_manager is
    Port (
        state           : in  std_logic_vector(1 downto 0); 
        clk             : in  STD_LOGIC;
        up              : in  STD_LOGIC; 
        special_clk_out : out STD_LOGIC;
        stop            : out STD_LOGIC := '0'
    );
end clk_manager;
-------------------------------------------------

architecture Behavioral of clk_manager is
begin
    process(clk)
        -- Variables internas
        variable special_clk   : std_logic := '0';
        variable counter       : integer := 0;
        variable maximum       : integer := 31_250_000;

        -- Constantes
        constant minimum       : integer := 7_812_500;
        constant maximum_limit : integer := 31_250_000;
        constant step          : integer := 366_210;

        -- Control interno
        variable running       : boolean := false;  -- Activa la cuenta luego de activar up 
        variable up_r          : std_logic := '0';  -- Detecta variación de up
    begin
        if rising_edge(clk) then
            -- Asignación base
            special_clk_out <= special_clk;

            -----------------------------------------------------------------
            -- Resetea valores cuando state /= "10"
            -----------------------------------------------------------------
            if state /= "10" then
                counter     := 0;
                maximum     := maximum_limit;
                special_clk := '0';
                stop        <= '0';
                special_clk_out <= '0';
                running     := false; 
                up_r     := '0';

            -----------------------------------------------------------------
            -- Funcionamiento normal cuando state = "10"
            -----------------------------------------------------------------
            else
                -- Detecta activación de up
                if (up = '1' and up_r = '0') then
                    running := true;
                end if;
                up_r := up;

                -- proceso inicia solo con activación de up
                if running then
                
                    -- Continúa si up sigue activo.
                    if (up = '1') then
                        -- AUMENTANDO VELOCIDAD
                        if (counter = maximum) then
                            counter := 0;
                            special_clk := NOT special_clk;

                            if (maximum >= minimum) then
                                maximum := maximum - step;
                            end if;
                        else
                            counter := counter + 1;
                        end if;

                    else
                        -- DISMINUYENDO VELOCIDAD
                        if (maximum >= maximum_limit) then
                            stop <= '1';
                        else
                            if (counter = maximum) then
                                counter := 0;
                                special_clk := NOT special_clk;

                                if (maximum <= maximum_limit) then
                                    maximum := maximum + step;
                                end if;
                            else
                                counter := counter + 1;
                            end if;
                        end if;
                    end if;
                end if; -- (detección activación)
            end if; -- (detección state)
        end if; -- (rising_edge)
    end process;
end Behavioral;