library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
--------------------------------------------
entity ruleta is
    Port ( 
        special_clk_out : in STD_LOGIC;
        stop            : in STD_LOGIC;
        leds            : out STD_LOGIC_VECTOR
    );
end ruleta;
---------------------------------------------
architecture Behavioral of ruleta is

    signal led_signal : std_logic_vector(3 downto 0) := "0001";

begin
    --------------------------------------------------------------
    process(special_clk_out)
    begin
        if (stop = '0') then
            if rising_edge(special_clk_out) then

                led_signal <= led_signal(2 downto 0) & led_signal(3);
            end if;
        end if;
    end process;

    -- Conexión al output:
    leds <= led_signal;

end Behavioral;