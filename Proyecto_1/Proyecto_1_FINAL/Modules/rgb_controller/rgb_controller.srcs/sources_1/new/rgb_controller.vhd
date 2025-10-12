library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity rgb_controller is
    Port (
        clk              : in std_logic;
        state            : in std_logic_vector (1 downto 0);
        difficulty       : in std_logic_vector (3 downto 0);
        win              : in std_logic;
        rgb_G_rainbow    : in std_logic;
        rgb_R_rainbow    : in std_logic;
        rgb_B_rainbow    : in std_logic;
        rgb_R_evil       : in std_logic;
        rgb_G            : out std_logic;
        rgb_R            : out std_logic;
        rgb_B            : out std_logic
        );
end rgb_controller;

architecture Behavioral of rgb_controller is

begin

rgb_R <=     rgb_R_rainbow when ((state = "11") and (win = '1')) else
             rgb_R_evil when (difficulty = "0001") else
             '0';
                
rgb_G <=     rgb_G_rainbow when ((state = "11") and (win = '1')) else
             '0';
                
rgb_B <=     rgb_B_rainbow when ((state = "11") and ( win = '1')) else
             '0';

end Behavioral;
