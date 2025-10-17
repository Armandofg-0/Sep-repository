library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-------------------------------------------------------
entity apuesta is
  Port (
    clk   : in  std_logic;
    state : in  std_logic_vector(1 downto 0);
    sw    : in  std_logic_vector(3 downto 0);
    guess : out std_logic_vector(3 downto 0):= "0000"
  );
end apuesta;
-------------------------------------------------------
architecture Behavioral of apuesta is
  signal sw0_r, sw1_r, sw2_r, sw3_r : std_logic := '0';
  
    -- Atributos sintetizables predefinidos:
  attribute keep : string;
  attribute mark_debug : string;

  attribute keep of guess : signal is "true";
  attribute mark_debug of state : signal is "true";
  
  
begin

  switches : process(clk)
  begin
    if rising_edge(clk) then
      if (state = "01") then 
          if (sw(0) = '1') and (sw0_r = '0') then
            guess <= "0001";
    
          elsif (sw(1) = '1') and (sw1_r = '0') then
            guess <= "0010";
    
          elsif (sw(2) = '1') and (sw2_r = '0') then
            guess <= "0100";
    
          elsif (sw(3) = '1') and (sw3_r = '0') then
            guess <= "1000";
          end if;
    
          -- Actualiza los estados previos
          sw0_r <= sw(0);
          sw1_r <= sw(1);
          sw2_r <= sw(2);
          sw3_r <= sw(3);
        end if;
    end if;
  end process;

end Behavioral;