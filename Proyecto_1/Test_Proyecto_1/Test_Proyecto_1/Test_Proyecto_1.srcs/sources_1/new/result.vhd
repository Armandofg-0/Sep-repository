library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity result is
    Port ( clk : in std_logic;
        state : in std_logic_vector (1 downto 0);
        rgb_r : out std_logic;
        rgb_g : out std_logic;
        rgb_b : out std_logic
     );
end result;

architecture Behavioral of result is
    
signal Buff_B : integer;
signal Buff_R : integer;
signal Buff_G : integer;
    
begin


end Behavioral;
