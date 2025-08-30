library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

--------------------------------------------
entity clk_manager is
    Port ( 
        clk             : in STD_LOGIC;
        enable          : in STD_LOGIC; 
        up              : in STD_LOGIC;
        special_clk_out : out STD_LOGIC;
        stop            : out STD_LOGIC := '0'
    );
end clk_manager;
---------------------------------------------

architecture Behavioral of clk_manager is

begin

    process(clk)
        -- Variables internas
        variable special_clk      : std_logic := '0';
        variable counter          : integer := 0;
        variable maximum          : integer := 31_250_000;
        
        -- Constantes
        constant minimum          : integer := 7_812_500;
        constant maximum_limit    : integer := 31_250_000;
        constant step             : integer := 366_210;

    begin
        if (enable = '1') then
            if (rising_edge(clk)) then
                -- Asignación al valor de salida
                special_clk_out <= special_clk;
                
                ---------------------------------------------------------------
                -- AUMENTANDO VELOCIDAD (up = '1')
                ---------------------------------------------------------------
                if (up = '1') then
                    
                    -- Contador llega al máximo - Resetea contador y cambia clk
                    if (counter = maximum) then
                        counter := 0;
                        special_clk := NOT special_clk;
                        
                        -- Reduce el máximo hasta alcanzar su mínimo valor posible
                        if (maximum >= minimum) then
                            maximum := maximum - step;
                        end if;
                    
                    -- Contador no ha llegado al valor necesario
                    else
                        counter := counter + 1;
                    end if;
                
                ---------------------------------------------------------------
                -- DISMINUYENDO VELOCIDAD (up = '0')
                ---------------------------------------------------------------
                else
                    
                    -- Se detiene si el periodo aumenta demasiado (frecuencia baja)
                    if (maximum >= maximum_limit) then
                        stop <= '1';
                    
                    else
                        -- Contador llega al máximo - Resetea contador y cambia clk
                        if (counter = maximum) then
                            counter := 0;
                            special_clk := NOT special_clk;
                            
                            -- Incrementa el máximo hasta alcanzar su máximo valor posible
                            if (maximum <= maximum_limit) then
                                maximum := maximum + step;
                            end if;
                        
                        -- Contador no ha llegado al valor necesario
                        else
                            counter := counter + 1;
                        end if;
                        
                    end if;
                    
                end if;
            end if;
        end if;
    end process;

end Behavioral;