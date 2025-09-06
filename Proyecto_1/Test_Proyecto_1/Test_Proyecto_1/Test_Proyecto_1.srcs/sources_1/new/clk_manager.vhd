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
        stop            : out STD_LOGIC := '0';
        level           : in integer
    );
end clk_manager;
-------------------------------------------------

architecture Behavioral of clk_manager is


function adjust_parameter (
    parameter : integer;
    level     : integer; 
    numerator : integer; 
    denominator: integer
) return integer is

    variable parameter_adjusted : integer;
    
    begin
        
        if (level=1) then
            parameter_adjusted:=parameter;
        elsif (level=2) then
            parameter_adjusted:=(parameter/denominator)*numerator;
        elsif (level=3) then
            parameter_adjusted:=(((parameter/denominator)*numerator)/denominator)*numerator;
        else
            parameter_adjusted:=(((((parameter/denominator)*numerator)/denominator)*numerator)/denominator)*numerator;
        end if;
    
    return parameter_adjusted;

end adjust_parameter;



begin

    process(clk)
        -- Variables internas
        variable special_clk   : std_logic := '0';
        variable counter       : integer := 0;
        variable maximum       : integer := 31_250_000;

        -- Constantes
        constant minimum_initial      : integer := 7_812_500;
        constant maximum_limit        : integer := 31_250_000;
        constant step_initial         : integer := 366_210;
        
        -- Variables dependientes de level (la dificultad del juego)
        variable minimum  : integer := 7_812_500;
        variable step     : integer := 366_210;

        -- Control interno
        variable running       : boolean := false;  -- Activa la cuenta luego de activar up 
        variable up_r          : std_logic := '0';  -- Detecta variaci�n de up
    
    begin
        
        -- se aplica funci�n adjust_parameter para ajustar minimum y step a la dificultad del juego
        minimum := adjust_parameter ( minimum_initial, level, 3, 4);
        step    := adjust_parameter ( step_initial, level, 4, 3);
        
        if rising_edge(clk) then
            -- Asignaci�n base
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
                -- Detecta activaci�n de up
                if (up = '1' and up_r = '0') then
                    running := true;
                end if;
                up_r := up;

                -- proceso inicia solo con activaci�n de up
                if running then
                
                    -- Contin�a si up sigue activo.
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
                end if; -- (detecci�n activaci�n)
            end if; -- (detecci�n state)
        end if; -- (rising_edge)
    end process;
end Behavioral;