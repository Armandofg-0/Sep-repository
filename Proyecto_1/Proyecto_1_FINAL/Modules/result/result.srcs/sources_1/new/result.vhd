library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity result is
    Port (
        apuesta : in std_logic_vector (3 downto 0);
        result : in std_logic_vector (3 downto 0);
        win : out std_logic
     );
end result;

architecture Behavioral of result is

begin

win <= '1' when (apuesta = result) else
       '0';

end Behavioral;
