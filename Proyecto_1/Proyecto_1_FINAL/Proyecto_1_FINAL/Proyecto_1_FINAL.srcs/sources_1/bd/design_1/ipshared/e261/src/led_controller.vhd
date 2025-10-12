library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
--------------------------------------------
entity led_controller is
    Port ( 
        clk             : in std_logic;
        ruleta_out      : in std_logic_vector(3 downto 0);
        settings_out    : in std_logic_vector (3 downto 0);
        guess           : in std_logic_vector(3 downto 0);
        state           : in std_logic_vector(1 downto 0);
        leds            : out STD_LOGIC_VECTOR(3 downto 0)
    );
end led_controller;
---------------------------------------------
architecture Behavioral of led_controller is 

signal counter : integer := 0;

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if (counter<160000000) then
                counter <= counter+1;
            else
                counter <= 0;
            end if;
        end if;
    end process;
            
    leds <=     guess when (state = "01") else
                ruleta_out when (state = "10") else
                (ruleta_out) when ((state  = "11") and (counter < 80000000)) else
                (ruleta_out or guess) when ((state  = "11") and (counter >= 80000000)) else
                settings_out;
                
end Behavioral;