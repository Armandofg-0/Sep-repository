library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-----------------------------------------------------------------------------------------
entity ruleta is
    generic (
        INIT_CYCLES : natural := 4   -- número de ciclos para limpiar pipeline
    );
    Port ( 
        clk             : in  STD_LOGIC;                       
        state           : in  STD_LOGIC_VECTOR (1 downto 0);  
        special_clk_out : in  STD_LOGIC;                       
        stop            : in  STD_LOGIC;                      
        difficulty      : in  STD_LOGIC_VECTOR (3 downto 0);
        result          : out STD_LOGIC_VECTOR (3 downto 0);
            dbg_ram_din    : out STD_LOGIC_VECTOR(3 downto 0);
    dbg_ram_q      : out STD_LOGIC_VECTOR(3 downto 0);
    dbg_rot_enable : out STD_LOGIC;
    dbg_sel_delay  : out STD_LOGIC_VECTOR(1 downto 0)
  );
end ruleta;

-----------------------------------------------------------------------------------------
architecture Behavioral of ruleta is

    ----------------------------------------------------------------------------
    -- Señales internas
    ----------------------------------------------------------------------------
    signal led_state   : std_logic_vector(3 downto 0) := "0001";
    signal led_facil   : std_logic_vector(3 downto 0); 
    signal led_medio   : std_logic_vector(3 downto 0);
    signal led_dificil : std_logic_vector(3 downto 0);
    
    signal step_cnter  : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal jump_type   : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal direction   : STD_LOGIC := '1';
    
    signal dir_next    : std_logic;
    signal step_next   : std_logic_vector(1 downto 0);
    signal jump_next   : std_logic_vector(1 downto 0);

    signal rot_enable_reg   : STD_LOGIC := '0';
    signal write_pending    : STD_LOGIC := '0';

    signal random_delay     : STD_LOGIC_VECTOR(1 downto 0); 
    signal select_delay     : STD_LOGIC_VECTOR(1 downto 0);
    signal delay_cntr       : unsigned(2 downto 0) := (others => '0');
    
    signal ram_din          : STD_LOGIC_VECTOR(3 downto 0) := "0001";
    signal ruleta_output    : STD_LOGIC_VECTOR(3 downto 0);

    signal difficulty_r     : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal init_active      : STD_LOGIC := '0';

    -- ancho suficiente para contar hasta INIT_CYCLES
    signal init_cntr        : unsigned(15 downto 0) := (others => '0'); 

    signal lfsr             : STD_LOGIC_VECTOR(7 downto 0) := "11001010";

    signal special_sync1    : std_logic := '0';
    signal special_sync2    : std_logic := '0';

    component c_shift_ram_0 is
        port (
            A   : in  STD_LOGIC_VECTOR(1 downto 0);
            D   : in  STD_LOGIC_VECTOR(3 downto 0);
            CLK : in  STD_LOGIC;
            CE  : in  STD_LOGIC;
            Q   : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;
    
    component rotacion_facil
        Port ( 
            led_in  : in  STD_LOGIC_VECTOR(3 downto 0);
            led_out : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;
    
    component rotacion_medio
        Port ( 
            led_in  : in  STD_LOGIC_VECTOR(3 downto 0);
            dir_in  : in  STD_LOGIC;
            led_out : out STD_LOGIC_VECTOR(3 downto 0);
            dir_out : out STD_LOGIC
        );
    end component;
    
    component rotacion_dificil
        Port ( 
            led_in   : in  STD_LOGIC_VECTOR(3 downto 0);
            step_in  : in  STD_LOGIC_VECTOR(1 downto 0);
            jump_in  : in  STD_LOGIC_VECTOR(1 downto 0);
            diff     : in  STD_LOGIC_VECTOR(3 downto 0);
            led_out  : out STD_LOGIC_VECTOR(3 downto 0);
            step_out : out STD_LOGIC_VECTOR(1 downto 0);
            jump_out : out STD_LOGIC_VECTOR(1 downto 0)
        );
    end component; 

    signal rot_enable : std_logic;

begin

    rot_enable <= '1' when init_active = '1' else rot_enable_reg;
    ram_din    <= "0001" when init_active = '1' else led_state;

    ----------------------------------------------------------------------------
    -- Proceso principal
    ----------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            special_sync1 <= special_clk_out;
            special_sync2 <= special_sync1;

            -- inicialización cuando cambia difficulty
            if (difficulty /= difficulty_r) then
                init_active <= '1';
                init_cntr   <= (others => '0');
                led_state   <= "0001";
                direction   <= '1';
                step_cnter  <= (others => '0');
                jump_type   <= (others => '0');
                write_pending <= '0';
            end if;

            -- contar ciclos de init
            if init_active = '1' then
                init_cntr <= init_cntr + 1;
                if init_cntr = INIT_CYCLES-1 then
                    init_active <= '0';
                end if;
            end if;

            difficulty_r <= difficulty;

            -- pulso CE
            if write_pending = '1' then
                rot_enable_reg <= '1';
                write_pending  <= '0';
            else
                rot_enable_reg <= '0';
            end if;

            -- flanco ascendente de special_clk_out
            if (special_sync1 = '1' and special_sync2 = '0') then
                delay_cntr <= delay_cntr + 1;

                if difficulty = "1111" and delay_cntr = 3 then
                    delay_cntr <= (others => '0');
                    lfsr <= (lfsr(6) xor lfsr(7)) & lfsr(7 downto 1);
                    random_delay <= lfsr(1 downto 0);
                elsif difficulty /= "1111" then
                    delay_cntr <= (others => '0');
                end if;

                if (stop = '0') and (state = "10") and (init_active = '0') then
                    case difficulty is
                        when "1000" =>
                            led_state <= led_facil;
                        when "1100" =>
                            led_state <= led_medio;
                            direction <= dir_next;
                        when others =>
                            led_state <= led_dificil;
                            step_cnter <= step_next;
                            jump_type  <= jump_next;
                    end case;

                    write_pending <= '1';
                end if;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- IP Core RAM Shift Register 
    ----------------------------------------------------------------------------
    delay : c_shift_ram_0
        port map (
            A   => select_delay,
            D   => ram_din,
            CLK => clk,
            CE  => rot_enable,
            Q   => ruleta_output
        );

    ----------------------------------------------------------------------------
    -- Rotaciones
    ----------------------------------------------------------------------------
    u_facil: rotacion_facil
        port map (
            led_in  => led_state,
            led_out => led_facil
        );

    u_medio: rotacion_medio
        port map (
            led_in  => led_state,
            dir_in  => direction,
            led_out => led_medio,
            dir_out => dir_next
        );

    u_dificil: rotacion_dificil
        port map (
            led_in   => led_state,
            step_in  => step_cnter,
            jump_in  => jump_type,
            diff     => difficulty,
            led_out  => led_dificil,
            step_out => step_next,
            jump_out => jump_next
        );

    ----------------------------------------------------------------------------
    -- Salidas
    ----------------------------------------------------------------------------
    result <= ruleta_output;

    select_delay <= random_delay when difficulty = "1111" else
                    "10"         when difficulty = "1110" else
                    "00";
dbg_ram_din    <= ram_din;
dbg_ram_q      <= ruleta_output;
dbg_rot_enable <= rot_enable;
dbg_sel_delay  <= select_delay;
end Behavioral;
