--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu Oct  2 14:30:10 2025
--Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    btn_3 : in STD_LOGIC;
    clk : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_led_controller_0_0 is
  port (
    ruleta_out : in STD_LOGIC_VECTOR ( 3 downto 0 );
    settings_out : in STD_LOGIC_VECTOR ( 3 downto 0 );
    guess : in STD_LOGIC_VECTOR ( 3 downto 0 );
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_led_controller_0_0;
  component design_1_state_machine_0_0 is
  port (
    clk : in STD_LOGIC;
    stop : in STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    btn_0 : in STD_LOGIC
  );
  end component design_1_state_machine_0_0;
  component design_1_clk_manager_0_0 is
  port (
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    btn_3 : in STD_LOGIC;
    special_clk_out : out STD_LOGIC;
    stop : out STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_clk_manager_0_0;
  component design_1_apuesta_0_0 is
  port (
    clk : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    guess : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_apuesta_0_0;
  component design_1_settings_0_0 is
  port (
    clk : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    difficulty : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_settings_0_0;
  component design_1_ruleta_0_0 is
  port (
    clk : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    special_clk_out : in STD_LOGIC;
    stop : in STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 3 downto 0 );
    result : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_ruleta_0_0;
  component design_1_debouncer_0_0 is
  port (
    clk : in STD_LOGIC;
    button : in STD_LOGIC;
    debounced_pulse : out STD_LOGIC
  );
  end component design_1_debouncer_0_0;
  component design_1_debouncer_1_0 is
  port (
    clk : in STD_LOGIC;
    button : in STD_LOGIC;
    debounced_pulse : out STD_LOGIC
  );
  end component design_1_debouncer_1_0;
  component design_1_debouncer_2_0 is
  port (
    clk : in STD_LOGIC;
    button : in STD_LOGIC;
    debounced_pulse : out STD_LOGIC
  );
  end component design_1_debouncer_2_0;
  signal apuesta_0_guess : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btn_0_1 : STD_LOGIC;
  signal btn_1_1 : STD_LOGIC;
  signal btn_2_1 : STD_LOGIC;
  signal btn_3_0_1 : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal clk_manager_0_special_clk_out : STD_LOGIC;
  signal clk_manager_0_stop : STD_LOGIC;
  signal debouncer_0_debounced_pulse : STD_LOGIC;
  signal debouncer_1_debounced_pulse : STD_LOGIC;
  signal debouncer_2_debounced_pulse : STD_LOGIC;
  signal led_controller_0_leds : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ruleta_0_result : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal settings_0_difficulty : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal settings_0_led : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state_machine_0_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sw_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  btn_0_1 <= btn_0;
  btn_1_1 <= btn_1;
  btn_2_1 <= btn_2;
  btn_3_0_1 <= btn_3;
  clk_0_1 <= clk;
  leds(3 downto 0) <= led_controller_0_leds(3 downto 0);
  sw_0_1(3 downto 0) <= sw(3 downto 0);
apuesta_0: component design_1_apuesta_0_0
     port map (
      clk => clk_0_1,
      guess(3 downto 0) => apuesta_0_guess(3 downto 0),
      state(1 downto 0) => state_machine_0_state(1 downto 0),
      sw(3 downto 0) => sw_0_1(3 downto 0)
    );
clk_manager_0: component design_1_clk_manager_0_0
     port map (
      btn_3 => btn_3_0_1,
      clk => clk_0_1,
      difficulty(3 downto 0) => settings_0_difficulty(3 downto 0),
      special_clk_out => clk_manager_0_special_clk_out,
      state(1 downto 0) => state_machine_0_state(1 downto 0),
      stop => clk_manager_0_stop
    );
debouncer_0: component design_1_debouncer_0_0
     port map (
      button => btn_0_1,
      clk => clk_0_1,
      debounced_pulse => debouncer_0_debounced_pulse
    );
debouncer_1: component design_1_debouncer_1_0
     port map (
      button => btn_2_1,
      clk => clk_0_1,
      debounced_pulse => debouncer_1_debounced_pulse
    );
debouncer_2: component design_1_debouncer_2_0
     port map (
      button => btn_1_1,
      clk => clk_0_1,
      debounced_pulse => debouncer_2_debounced_pulse
    );
led_controller_0: component design_1_led_controller_0_0
     port map (
      guess(3 downto 0) => apuesta_0_guess(3 downto 0),
      leds(3 downto 0) => led_controller_0_leds(3 downto 0),
      ruleta_out(3 downto 0) => ruleta_0_result(3 downto 0),
      settings_out(3 downto 0) => settings_0_led(3 downto 0),
      state(1 downto 0) => state_machine_0_state(1 downto 0)
    );
ruleta_0: component design_1_ruleta_0_0
     port map (
      clk => clk_0_1,
      difficulty(3 downto 0) => settings_0_difficulty(3 downto 0),
      result(3 downto 0) => ruleta_0_result(3 downto 0),
      special_clk_out => clk_manager_0_special_clk_out,
      state(1 downto 0) => state_machine_0_state(1 downto 0),
      stop => clk_manager_0_stop
    );
settings_0: component design_1_settings_0_0
     port map (
      btn_1 => debouncer_2_debounced_pulse,
      btn_2 => debouncer_1_debounced_pulse,
      clk => clk_0_1,
      difficulty(3 downto 0) => settings_0_difficulty(3 downto 0),
      led(3 downto 0) => settings_0_led(3 downto 0),
      state(1 downto 0) => state_machine_0_state(1 downto 0)
    );
state_machine_0: component design_1_state_machine_0_0
     port map (
      btn_0 => debouncer_0_debounced_pulse,
      clk => clk_0_1,
      state(1 downto 0) => state_machine_0_state(1 downto 0),
      stop => clk_manager_0_stop
    );
end STRUCTURE;
