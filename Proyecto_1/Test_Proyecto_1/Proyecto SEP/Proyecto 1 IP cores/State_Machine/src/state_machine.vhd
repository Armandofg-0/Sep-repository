library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-----------------------------------------------------
entity state_machine is
    Port (
        clk      : in  STD_LOGIC;
        enter    : in  STD_LOGIC;
        stop     : in  STD_LOGIC;
        finaliza : in  std_logic;
        state    : out STD_LOGIC_VECTOR(1 DOWNTO 0) := "00"
    );
end state_machine;
-------------------------------------------------------
architecture Behavioral of state_machine is

    type state_type is (idle, apuesta, ruleta, resultado);
    signal current_state, next_state : state_type := idle;

begin
    ------------------------------------------
    -- Parte secuencial: Determinar next state
    ------------------------------------------
    state_register: process(clk)
    begin
        if rising_edge(clk) then
        
        -- Reset solo al finalizar un ciclo entero:
            if finaliza = '1' and enter = '1' then
                current_state <= idle;  
                
        -- Actualiza estado actual:        
            else
                current_state <= next_state;
            end if;
        end if;
    end process state_register;

    ------------------------------------------
    -- Parte combinacional: Next state logic
    ------------------------------------------
    next_state_logic: process(current_state, enter, stop)
    begin
        -- Default: Se mantiene en estado actual
        next_state <= current_state;
        
        case current_state is
        
        -- Estado 0: idle
            when idle =>
                state <= "00";  
                if enter = '1' then
                    next_state <= apuesta;
                end if;
                
        -- Estado 1: apuesta        
            when apuesta =>
                state <= "01";  
                if enter = '1' then
                    next_state <= ruleta;
                end if;
 
        -- Estado 2: ruleta                
            when ruleta =>
                state <= "10"; 
                if stop = '1' then
                    next_state <= resultado;
                end if;

        -- Estado 3: resultado                
            when resultado =>
                state <= "11";  
        -- Se mantiene aquí hasta tener un reset: finaliza + enter             
        end case;
    end process next_state_logic;
end Behavioral;