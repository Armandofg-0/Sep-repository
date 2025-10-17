library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-------------------------------------------------------------
-- Descripción: Realiza una rotación a la izquierda de 4 bits
-------------------------------------------------------------
entity rotacion_facil is
    Port (
        led_in  : in  STD_LOGIC_VECTOR(3 downto 0);
        led_out : out STD_LOGIC_VECTOR(3 downto 0)
    );
end rotacion_facil;
--------------------------------------------------------
architecture behavioral of rotacion_facil is

    function rotate_left(v: std_logic_vector(3 downto 0)) 
        return std_logic_vector is
    begin
        return v(2 downto 0) & v(3);  -- Concatena bits 2-0 con bit 3
    end function;

begin
    led_out <= rotate_left(led_in);
    
end behavioral;