library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ruleta is
    Port ( 
        clk             : in  STD_LOGIC;                       -- reloj principal
        state           : in  STD_LOGIC_VECTOR (1 downto 0);  
        special_clk_out : in  STD_LOGIC;                       -- reloj de la ruleta
        stop            : in  STD_LOGIC;                      
        difficulty      : in  STD_LOGIC_VECTOR (3 downto 0);
        result          : out STD_LOGIC_VECTOR (3 downto 0) 
    );
end ruleta;

architecture Behavioral of ruleta is

    -- Señales internas
    signal led_signal  : STD_LOGIC_VECTOR(3 downto 0) := "0001";
    signal prev_state  : STD_LOGIC_VECTOR(1 downto 0) := "01";
    signal curr_state  : STD_LOGIC_VECTOR(1 downto 0);
    signal step_cnter  : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal jump_type   : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal direction   : STD_LOGIC := '1';

    -- ESTAS SEÑALES HAY QUE BORRARLAS EVENTUALMENTE:
    signal reset_req  : std_logic := '0'; -- pedido de reset (clk domain)
    signal reset_done : std_logic := '0'; -- acknowledge (special_clk domain)

    ------------------------------------------------
    -- Procedure para determinar el tipo de rotación
    ------------------------------------------------
    procedure led_rotation(
        signal led       : inout STD_LOGIC_VECTOR(3 downto 0);
        signal step_cnt  : inout STD_LOGIC_VECTOR(1 downto 0);
        signal jump_typ  : inout STD_LOGIC_VECTOR(1 downto 0);
        signal dir       : inout STD_LOGIC;
        difficulty       : in STD_LOGIC_VECTOR(3 downto 0)
    ) is
        -- Rotación izquierda
        function rotate_left(v : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
        begin
            return v(2 downto 0) & v(3);
        end function;

        -- Rotación derecha
        function rotate_right(v : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
        begin
            return v(0) & v(3 downto 1);
        end function;

        -- Rotación doble
        function rotate_double(v : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
        begin
            return v(1 downto 0) & v(3 downto 2);
        end function;

    begin
        case difficulty is
            -- Fácil: izquierda simple
            when "1000" =>
                led <= rotate_left(led);

            -- Medio: ping-pong
            when "1100" =>
                if dir = '1' then  -- hacia la izquierda
                    if led = "1000" then
                        dir <= '0'; 
                        led <= rotate_right(led);
                    else
                        led <= rotate_left(led);
                    end if;
                else  -- hacia la derecha
                    if led = "0001" then
                        dir <= '1'; 
                        led <= rotate_left(led);
                    else
                        led <= rotate_right(led);
                    end if;
                end if;

            -- Difícil: Izq-Izq-Der
            when "1110" =>
                case step_cnt is
                    when "00" | "01" => led <= rotate_left(led);
                    when "10"        => led <= rotate_right(led);
                    when others      => led <= rotate_left(led);
                end case;
                step_cnt <= std_logic_vector(unsigned(step_cnt) + 1);

            -- Muy difícil: saltos simples y dobles
            when others =>
                case jump_typ is
                    when "00"   => led <= rotate_left(led);
                    when "01"   => led <= rotate_double(led);
                    when "10"   => led <= rotate_double(led);
                    when others => led <= rotate_left(led);
                end case;
                jump_typ <= std_logic_vector(unsigned(jump_typ) + 1);
        end case;
    end procedure;

begin

    ---------------------------------------------------
    -- Proceso de registro de estados: Da señal de reset
    ---------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            curr_state <= state;
    
            -- Solicitar reset
            if (prev_state = "01") and (curr_state = "10") then
                reset_req <= '1';
            elsif reset_done = '1' then
                reset_req <= '0'; 
            end if;
    
            prev_state <= curr_state;
        end if;
    end process;

    ---------------------------------------------------
    -- Proceso de rotación: sincronizado con special_clk_out
    ---------------------------------------------------
    process(special_clk_out)
    begin
        if rising_edge(special_clk_out) then
            if reset_req = '1' then
                -- Resetear la ruleta
                led_signal <= "0001";
                direction  <= '1';
                step_cnter <= (others => '0');
                jump_type  <= (others => '0');
    
                reset_done <= '1'; -- confirmar rst recibido
            else
                reset_done <= '0'; -- limpia señal
    
                if (stop = '0') and (curr_state = "10") then
                    led_rotation(led_signal, step_cnter, jump_type, direction, difficulty);
                end if;
            end if;
        end if;
    end process;
    -- Asignación de salida
    result <= led_signal;

end Behavioral;
