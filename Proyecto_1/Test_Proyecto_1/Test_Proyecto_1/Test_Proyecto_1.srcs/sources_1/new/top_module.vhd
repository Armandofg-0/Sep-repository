library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
        clk         : in  std_logic;
        sw          : in  std_logic_vector(3 downto 0);
        btn_enter   : in  std_logic;
        btn_up      : in  std_logic;
        leds        : out std_logic_vector(3 downto 0);
        btn_extra   : in std_logic;
        rgb         : out std_logic
    );
end top;

architecture Behavioral of top is

    -- Señales internas
    signal state        : std_logic_vector(1 downto 0);
    signal guess        : std_logic_vector(3 downto 0);
    signal finaliza     : std_logic:='0';
    signal stop         : std_logic;
    signal special_clk  : std_logic;
    signal ruleta_out   : std_logic_vector(3 downto 0);
    --signal btn_enter    : std_logic;

begin
    
    RGB_lights: process(clk) begin
        if rising_edge(clk) then
            rgb <= finaliza;
        end if;
    end process;
   
    -- Debouncer
    --u_debouncer: entity work.Debouncing_Button_VHDL
    --    port map (
    --        button => btn_enter_original,
    --        clk      => clk,
    --        debounced_button => btn_enter
    --    );
    
    -- State machine
    u_state_machine: entity work.state_machine
        port map (
            clk      => clk,
            enter    => btn_enter,
            stop     => stop,
            finaliza => finaliza,
            state    => state,
            btn_extra => btn_extra
        );

    -- Apuesta 
    u_apuesta: entity work.apuesta
        port map (
            clk   => clk,
            state => state,
            sw    => sw,
            guess => guess
        );

    -- Clk manager
    u_clk_manager: entity work.clk_manager
        port map (
            state           => state,
            clk             => clk,
            up              => btn_up,
            special_clk_out => special_clk,
            stop            => stop
        );

    -- Ruleta
    u_ruleta: entity work.ruleta
        port map (
            state           => state,
            special_clk_out => special_clk,
            stop            => stop,
            result          => ruleta_out
        );

    -- LED controller
    u_led_controller: entity work.led_controller
        port map (
            value     => ruleta_out,
            guess     => guess,
            state     => state,
            leds      => leds,
            finaliza  => finaliza
        );


end Behavioral;