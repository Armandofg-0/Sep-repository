library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------
entity tb_ruleta is
end tb_ruleta;
----------------------------------------------
architecture Behavioral of tb_ruleta is
    signal special_clk_out: std_logic:= '0';
    signal stop: std_logic := '0';
    signal result: std_logic_vector (3 downto 0);
    signal state: std_logic_vector (1 downto 0);
    constant PERIODO: time := 10 ns;

component ruleta is
    Port (
            state           : in std_logic_vector;
            special_clk_out : in STD_LOGIC;
            stop : in STD_LOGIC;
            result : out STD_LOGIC_VECTOR);
            end component;
           
begin
dut: ruleta
port map (
          state => state,
          special_clk_out => special_clk_out,
          stop => stop,
          result => result
          );

 -- Reloj a 100 MHz
  GeneraReloj:						  
  process begin 	
    special_clk_out <= '1', '0' after PERIODO/2;
    wait for PERIODO;
  end process GeneraReloj;
  -------------------------------------
  process is begin
    stop <= '0';
    state <= "10";
    wait for 50 ns;
    stop <= '1';
    state <= "11";
    wait for 50 ns;
    stop <= '0';
    state <= "01";
    wait for 50 ns; 
    stop <= '1'; 
    state <= "10";
    wait for 50 ns; 
    stop <= '1'; 
    state <= "11";       
    wait;
  end process Prueba;
end Behavioral;
