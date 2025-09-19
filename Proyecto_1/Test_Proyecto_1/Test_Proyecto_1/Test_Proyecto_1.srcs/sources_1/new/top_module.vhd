library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
        clk     : in  std_logic;
        sw      : in  std_logic_vector(3 downto 0);
        btn_0   : in  std_logic;
        btn_1   : in  std_logic;
        btn_2   : in  std_logic;
        btn_3   : in  std_logic;
        leds    : out std_logic_vector(3 downto 0);
        rgb_g   : out std_logic := '0';
        rgb_b   : out std_logic := '0'
    );
end top;

architecture Behavioral of top is

    -- Señales internas
    signal state        : std_logic_vector(1 downto 0);
    signal guess        : std_logic_vector(3 downto 0);
    signal stop         : std_logic;
    signal difficulty   : std_logic_vector(3 downto 0);
    signal special_clk  : std_logic;
    signal ruleta_out   : std_logic_vector(3 downto 0);
    signal settings_out : std_logic_vector(3 downto 0);

    -- Señales de botones ya debounced
    signal btn_0d       : std_logic;
    signal btn_1d       : std_logic;
    signal btn_2d       : std_logic;

begin
    
    ----------------------------------------------------------------
    -- Indicadores RGB
    ----------------------------------------------------------------
    RGB_green: process(clk) 
    begin
        if rising_edge(clk) then
            if state = "11" then
                rgb_g <= '1';
            else
                rgb_g <= '0';
            end if;
        end if;
    end process;
    
    RGB_blue: process(clk) 
    begin
        if rising_edge(clk) then
            if state = "00" then
                rgb_b <= '1';
            else
                rgb_b <= '0';
            end if;            
        end if;
    end process;

    ----------------------------------------------------------------
    -- Instancias de debouncers (uno por botón)
    ----------------------------------------------------------------
    u_btn0: entity work.Debouncing_Button_VHDL
        generic map(
            CLK_FREQ_HZ      => 125_000_000,
            DEBOUNCE_TIME_MS => 20
        )
        port map(
            clk             => clk,
            button          => btn_0,
            debounced_pulse => btn_0d
        );

    u_btn1: entity work.Debouncing_Button_VHDL
        generic map(
            CLK_FREQ_HZ      => 125_000_000,
            DEBOUNCE_TIME_MS => 20
        )
        port map(
            clk             => clk,
            button          => btn_1,
            debounced_pulse => btn_1d
        );

    u_btn2: entity work.Debouncing_Button_VHDL
        generic map(
            CLK_FREQ_HZ      => 125_000_000,
            DEBOUNCE_TIME_MS => 20
        )
        port map(
            clk             => clk,
            button          => btn_2,
            debounced_pulse => btn_2d
        );
  
    ----------------------------------------------------------------
    -- State machine
    ----------------------------------------------------------------
    u_state_machine: entity work.state_machine
        port map (
            clk      => clk,
            btn_0    => btn_0d,
            stop     => stop,
            state    => state
        );
        
    ----------------------------------------------------------------
    -- Settings menu 
    ----------------------------------------------------------------
    settings_menu: entity work.settings
         port map (
            clk        => clk,
            state      => state,
            btn_1      => btn_1d,
            btn_2      => btn_2d,
            difficulty => difficulty,
            led        => settings_out
        );

    ----------------------------------------------------------------
    -- Apuesta
    ----------------------------------------------------------------
    u_apuesta: entity work.apuesta
        port map (
            clk   => clk,
            state => state,
            sw    => sw,
            guess => guess
        );

    ----------------------------------------------------------------
    -- Clk manager
    ----------------------------------------------------------------
    u_clk_manager : entity work.clk_manager
        generic map (
            CLK_FREQ_HZ => 125_000_000
        )
        port map (
            state           => state,
            clk             => clk,
            btn_3           => btn_3,
            special_clk_out => special_clk,
            stop            => stop,
            difficulty      => difficulty
        );

    ----------------------------------------------------------------
    -- Ruleta
    ----------------------------------------------------------------
    u_ruleta: entity work.ruleta
        port map (
            clk             => clk,
            state           => state,
            special_clk_out => special_clk,
            stop            => stop,
            difficulty      => difficulty,
            result          => ruleta_out
        );

    ----------------------------------------------------------------
    -- LED controller
    ----------------------------------------------------------------
    u_led_controller: entity work.led_controller
        port map (
            ruleta_out  => ruleta_out,
            settings_out=> settings_out,
            guess       => guess,
            state       => state,
            leds        => leds
        );

end Behavioral;
