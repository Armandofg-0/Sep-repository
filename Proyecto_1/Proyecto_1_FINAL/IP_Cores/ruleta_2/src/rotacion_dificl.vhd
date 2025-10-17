library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-------------------------------------------------------
entity rotacion_dificil is
    Port (
        led_in   : in  STD_LOGIC_VECTOR(3 downto 0);
        step_in  : in  STD_LOGIC_VECTOR(1 downto 0);
        jump_in  : in  STD_LOGIC_VECTOR(1 downto 0);
        diff     : in  STD_LOGIC_VECTOR(3 downto 0);
        led_out  : out STD_LOGIC_VECTOR(3 downto 0);
        step_out : out STD_LOGIC_VECTOR(1 downto 0);
        jump_out : out STD_LOGIC_VECTOR(1 downto 0)
    );
end rotacion_dificil;
-------------------------------------------------------
architecture Behavioral of rotacion_dificil is

    -- rotacion a la izquierda
    function rotate_left(v : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
    begin
        return v(2 downto 0) & v(3);
    end function;

    -- rotacion a la derecha
    function rotate_right(v : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
    begin
        return v(0) & v(3 downto 1);
    end function;

    -- rotacion doble (salto de 2 bits):
    function rotate_double(v : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
    begin
        return v(1 downto 0) & v(3 downto 2);
    end function;
begin
    process(led_in, step_in, jump_in, diff)
        variable step_v : STD_LOGIC_VECTOR(1 downto 0);
        variable jump_v : STD_LOGIC_VECTOR(1 downto 0);
    begin
        step_v := step_in;
        jump_v := jump_in;

        -- Rotacion segun dificultad:
        case diff is
        
        -- Difícil: Izq-Izq-Der-izq
            when "1110" =>  
            -- Rotacion izq-izq:
                if step_v = "00" or step_v = "01" then
                    led_out <= rotate_left(led_in);

                -- Rotacion derecha:
                elsif step_v = "10" then
                    led_out <= rotate_right(led_in);
                
                -- Rotacion izquierda:
                else
                    led_out <= rotate_left(led_in);
                end if;
                
                -- Actualizacion inmediata de step
                step_v := std_logic_vector(unsigned(step_v) + 1);

        -- Modo experto: simple-doble-doble-simple
            when others => 
                case jump_v is
                    when "00"   => led_out <= rotate_left(led_in);
                    when "01"   => led_out <= rotate_double(led_in);
                    when "10"   => led_out <= rotate_double(led_in);
                    when others => led_out <= rotate_left(led_in);
                end case;
                
                -- Actualizacion inmediata de jump
                jump_v := std_logic_vector(unsigned(jump_v) + 1);
        end case;

        step_out <= step_v;
        jump_out <= jump_v;
    end process;
end Behavioral;
