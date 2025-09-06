library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity settings is
    Port (
        clk   : in std_logic;
        state : in std_logic_vector (1 downto 0);
        btn2  : in std_logic;
        btn1  : in std_logic;
        level : out integer:= 1;
        led   : out std_logic_vector (3 downto 0):= "1000");
end settings;

architecture Behavioral of settings is

begin

process(clk)

variable difficulty : std_logic_vector (3 downto 0) := "1000";

begin
    
    
    if (state="00") then -- si estamos en IDLE
    
       if rising_edge(clk) then
       
            led <= difficulty;
            
            if (difficulty = "1000") then
                level <= 1;
                if (btn1='1') then
                    difficulty:="1100";
                end if;
            elsif (difficulty="1100") then
                level <= 2;
                if(btn2='1') then
                    difficulty:="1110";
                end if;
            elsif (difficulty="1110") then
                level <= 3;
                if(btn1='1') then
                    difficulty:="1111";
                end if;
            elsif (difficulty="1111") then
                level <= 4;
                if(btn2='1') then
                    difficulty:="1000";
                end if;
            end if;
            
      end if;

    end if;

end process;

end Behavioral;
