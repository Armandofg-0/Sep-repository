library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
--------------------------------------------
entity led_controller is
    Port ( 
        value           : in STD_LOGIC_vector(3 downto 0);
        guess           : in std_logic_vector(3 downto 0);
        state           : in std_logic_vector(1 downto 0);
        leds            : out STD_LOGIC_VECTOR(3 downto 0);
        finaliza        : out std_logic := '0'
    );
end led_controller;
---------------------------------------------
architecture Behavioral of led_controller is

begin
    leds <=     guess when state            = "01" else
                value when state            = "10" else
                (value and guess) when state  = "11" else
                (others => '0');
    finaliza <= '1' when state = "11" else '0';
end Behavioral;
