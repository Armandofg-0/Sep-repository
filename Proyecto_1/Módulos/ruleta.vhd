library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
---------------------------------------------------------------
entity ruleta is
    Port ( 
        state           : in  STD_LOGIC_VECTOR (1 downto 0);  
        special_clk_out : in  STD_LOGIC;                     
        stop            : in  STD_LOGIC;                      
        result          : out STD_LOGIC_VECTOR (3 downto 0) 
    );
end ruleta;
----------------------------------------------------------------
architecture Behavioral of ruleta is

    -- Señales internas
    signal led_signal : std_logic_vector(3 downto 0) := "0001";
    signal state_reg  : std_logic_vector(1 downto 0) := "01";

    --==================================================
    -- Procedure: rotar y actualizar la ruleta
    --==================================================
    procedure rotar_led(
        signal ruleta      : inout std_logic_vector(3 downto 0);
        signal prev_state  : inout std_logic_vector(1 downto 0);
        signal curr_state  : in    std_logic_vector(1 downto 0);
        signal stop_sig    : in    std_logic;
        signal result_val  : out   std_logic_vector(3 downto 0)
    ) is
    begin
        -- Reset: transición de apuesta (01) a ruleta (10)
        if (prev_state = "01") and (curr_state = "10") then
            ruleta <= "0001";

        -- Rotación circular mientras stop = '0'
        elsif (stop_sig = '0') and (curr_state = "10") then
            ruleta <= ruleta(2 downto 0) & ruleta(3);
        end if;

        -- Actualizar salida y estado previo
        result_val <= ruleta;
        prev_state <= curr_state;
    end procedure;
----------------------------------------------------------------
begin
    process(special_clk_out)
    begin
        if rising_edge(special_clk_out) then
            rotar_led(led_signal, state_reg, state, stop, result);
        end if;
    end process;

end Behavioral;
