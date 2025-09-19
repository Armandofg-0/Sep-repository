library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity settings is
    Port (
        clk   : in std_logic;
        state : in std_logic_vector (1 downto 0);
        btn_1  : in std_logic;
        btn_2  : in std_logic;
        difficulty : out STD_LOGIC_VECTOR(3 downto 0):= "1000";
        led   : out std_logic_vector (3 downto 0):= "1000");
end settings;

architecture Behavioral of settings is

begin

process(clk)

variable level : std_logic_vector (3 downto 0) := "1000";

begin
    
    
    if (state="00") then -- si estamos en IDLE
    
       if rising_edge(clk) then
       
            led <= level;
            
            if (level = "1000") then
                difficulty <= level;
                if (btn_1='1') then
                    level:="1100";
                end if;
            elsif (level="1100") then
                difficulty <= level;
                if(btn_1='1') then
                    level:="1110";
                end if;
            elsif (level="1110") then
                difficulty <= level;
                if(btn_1='1') then
                    level:="1111";
                end if;
            elsif (level="1111") then
                difficulty <= level;
                if(btn_1='1') then
                    level:="1000";
                end if;
            end if;
            
      end if;

    end if;

end process;

end Behavioral;
