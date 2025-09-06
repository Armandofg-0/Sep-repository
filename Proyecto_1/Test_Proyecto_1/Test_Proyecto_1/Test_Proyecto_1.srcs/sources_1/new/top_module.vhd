library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
        clk         : in  std_logic;
        sw          : in  std_logic_vector(3 downto 0);
        btn_enter   : in  std_logic;
        btn_up      : in  std_logic;
        btn2        : in  std_logic;
        leds        : out std_logic_vector(3 downto 0);
        btn_extra   : in std_logic;
        rgb_g       : out std_logic;
        rgb_b       : out std_logic:='0'
    );
end top;

architecture Behavioral of top is

    -- Señales internas
    signal state        : std_logic_vector(1 downto 0);
    signal guess        : std_logic_vector(3 downto 0);
    signal finaliza     : std_logic:='0';
    signal stop         : std_logic;
    signal level        : integer;
    signal special_clk  : std_logic;
    signal ruleta_out   : std_logic_vector(3 downto 0);
    signal settings_out : std_logic_vector(3 downto 0);
    --signal btn_enter    : std_logic;

begin
    
    RGB_green: process(clk) begin
        if rising_edge(clk) then
            rgb_g <= finaliza;
        end if;
    end process;
    
     RGB_blue: process(clk) begin
        if rising_edge(clk) then
            if state="00" then
                rgb_b <= '1';
            else
                rgb_b <= '0';
            end if;            
        end if;
    end process;
    
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
        
     -- Settings_menu to modify difficulty
     settings_menu: entity work.settings
         port map (
            clk       => clk,
            state     => state,
            btn2      => btn2,
            btn1      => btn_up,
            level     => level,
            led       => settings_out
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
            stop            => stop,
            level           => level
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
            ruleta_out => ruleta_out,
            settings_out => settings_out,
            guess      => guess,
            state      => state,
            leds       => leds,
            finaliza   => finaliza
        );


end Behavioral;