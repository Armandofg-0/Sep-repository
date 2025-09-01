library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
--------------------------------------------
entity ruleta is
    Port ( 
        state           : in STD_LOGIC_VECTOR (1 downto 0);
        special_clk_out : in STD_LOGIC;
        stop            : in STD_LOGIC;
        result          : out STD_LOGIC_VECTOR (3 downto 0)
    );
end ruleta;
---------------------------------------------
architecture Behavioral of ruleta is

    signal led_signal : std_logic_vector(3 downto 0) := "0001";
    signal state_r    : std_logic_vector(1 downto 0);

begin
    --------------------------------------------------------------
    process(special_clk_out)
    begin
    
        -- Condición de reset: apuesta -> ruleta
        if state_r = "01" and state = "10" then
            led_signal <= "0001";
        end if;    
        state_r <= state;

        -- Ruleta avanza hasta que stop = '1'
        if (stop = '0') and state = "10" then
                if rising_edge(special_clk_out) then
                    led_signal <= led_signal(2 downto 0) & led_signal(3);
                end if;
            end if;
    end process;

    -- Conexión al output:
    result <= led_signal;

end Behavioral;