library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
----------------------------------------------------------------------
entity rotacion_medio is
    Port (
        led_in  : in  STD_LOGIC_VECTOR(3 downto 0);
        dir_in  : in  STD_LOGIC;
        led_out : out STD_LOGIC_VECTOR(3 downto 0);
        dir_out : out STD_LOGIC
    );
end rotacion_medio;
----------------------------------------------------------------------
architecture Behavioral of rotacion_medio is

    -- Procedure que encapsula la lógica de rotación con rebote
    procedure do_rotation(
        signal v_led_in  : in  STD_LOGIC_VECTOR(3 downto 0);
        signal v_dir_in  : in  STD_LOGIC;
        signal v_led_out : out STD_LOGIC_VECTOR(3 downto 0);
        signal v_dir_out : out STD_LOGIC
    ) is
    begin
        if v_dir_in = '1' then
            -- dirección izquierda
            if v_led_in = "1000" then
                v_dir_out <= '0'; 
                v_led_out <= v_led_in(0) & v_led_in(3 downto 1); -- derecha
            else
                v_dir_out <= v_dir_in;
                v_led_out <= v_led_in(2 downto 0) & v_led_in(3); -- izquierda
            end if;
        else
            -- dirección derecha
            if v_led_in = "0001" then
                v_dir_out <= '1';
                v_led_out <= v_led_in(2 downto 0) & v_led_in(3); -- izquierda
            else
                v_dir_out <= v_dir_in;
                v_led_out <= v_led_in(0) & v_led_in(3 downto 1); -- derecha
            end if;
        end if;
    end procedure;

begin
    process(led_in, dir_in)
    begin
        -- simplemente llamamos al procedure
        do_rotation(led_in, dir_in, led_out, dir_out);
    end process;
end Behavioral;
