library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity led_controller_tb is
end led_controller_tb;

architecture testbench of led_controller_tb is

    -- Component declaration
    component led_controller
        Port ( 
            value : in STD_LOGIC_VECTOR(3 downto 0);
            guess : in STD_LOGIC_VECTOR(3 downto 0);
            state : in STD_LOGIC_VECTOR(1 downto 0);
            leds  : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    -- Test bench signals
    signal value_tb : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal guess_tb : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal state_tb : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
    signal leds_tb  : STD_LOGIC_VECTOR(3 downto 0);

    -- Constants for better readability
    constant STATE_00 : STD_LOGIC_VECTOR(1 downto 0) := "00";
    constant STATE_01 : STD_LOGIC_VECTOR(1 downto 0) := "01";
    constant STATE_10 : STD_LOGIC_VECTOR(1 downto 0) := "10";
    constant STATE_11 : STD_LOGIC_VECTOR(1 downto 0) := "11";

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: led_controller
        port map (
            value => value_tb,
            guess => guess_tb,
            state => state_tb,
            leds  => leds_tb
        );

    -- Stimulus process
    stimulus: process
    begin
        -- Test case 1: state = "00" (all LEDs should be off)
        value_tb <= "1010";
        guess_tb <= "1100";
        state_tb <= STATE_00;
        wait for 10 ns;

        -- Test case 2: state = "01" (show guess value)
        value_tb <= "1010";
        guess_tb <= "1100";
        state_tb <= STATE_01;
        wait for 10 ns;

        -- Test case 3: state = "10" (show value)
        value_tb <= "1010";
        guess_tb <= "1100";
        state_tb <= STATE_10;
        wait for 10 ns;

        -- Test case 4: state = "11" (show value AND guess)
        value_tb <= "1010";
        guess_tb <= "1100";
        state_tb <= STATE_11;
        wait for 10 ns;
   
        -- Test case 5: Additional test with different values
        value_tb <= "1111";
        guess_tb <= "0101";
        state_tb <= STATE_11;
        wait for 10 ns;
        assert leds_tb = "0101" report "Test 5 failed: LEDs should show 0101" severity error;

        -- Test case 6: Test state transition
        value_tb <= "0011";
        guess_tb <= "0110";
        state_tb <= STATE_01;
        wait for 10 ns;

        state_tb <= STATE_10;
        wait for 10 ns;
   
        -- End simulation
        wait for 10 ns;
        wait;
    end process stimulus;

end testbench;