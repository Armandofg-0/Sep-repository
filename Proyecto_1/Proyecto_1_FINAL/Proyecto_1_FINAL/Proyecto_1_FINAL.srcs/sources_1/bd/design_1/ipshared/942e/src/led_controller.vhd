library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
--------------------------------------------
entity led_controller is
    Port ( 
        ruleta_out      : in std_logic_vector(3 downto 0);
        settings_out    : in std_logic_vector (3 downto 0);
        guess           : in std_logic_vector(3 downto 0);
        state           : in std_logic_vector(1 downto 0);
        leds            : out STD_LOGIC_VECTOR(3 downto 0)
    );
end led_controller;
---------------------------------------------
architecture Behavioral of led_controller is

begin
    leds <=     guess when state                   = "01" else
                ruleta_out when state              = "10" else
                (ruleta_out and guess) when state  = "11" else
                settings_out when state            = "00";
end Behavioral;