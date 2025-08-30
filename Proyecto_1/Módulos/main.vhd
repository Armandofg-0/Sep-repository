library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-----------------------------------------------------
entity main is
    Port ( clk  : in STD_LOGIC;
    enable: in std_logic;
           up   : in STD_LOGIC;
           leds : out STD_LOGIC_VECTOR (3 downto 0));
end main;
-----------------------------------------------------
architecture Behavioral of main is

signal special_clk_out : STD_LOGIC;
signal stop : STD_LOGIC := '0';

begin
    clk_manager : entity work.clk_manager
    port map(

      clk               => clk,
          enable => enable,
      up                => up,
      special_clk_out   => special_clk_out,
      stop              => stop);
  
  ruleta : entity work.ruleta
    port map(
      special_clk_out       => special_clk_out,
      stop => stop,
      leds => leds);
end Behavioral;
