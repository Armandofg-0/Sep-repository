-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Oct  2 13:25:36 2025
-- Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_led_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_led_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller is
  port (
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    settings_out : in STD_LOGIC_VECTOR ( 3 downto 0 );
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    guess : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ruleta_out : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller is
begin
\leds[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0E3202"
    )
        port map (
      I0 => settings_out(0),
      I1 => state(1),
      I2 => state(0),
      I3 => guess(0),
      I4 => ruleta_out(0),
      O => leds(0)
    );
\leds[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0E3202"
    )
        port map (
      I0 => settings_out(1),
      I1 => state(1),
      I2 => state(0),
      I3 => guess(1),
      I4 => ruleta_out(1),
      O => leds(1)
    );
\leds[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0E3202"
    )
        port map (
      I0 => settings_out(2),
      I1 => state(1),
      I2 => state(0),
      I3 => guess(2),
      I4 => ruleta_out(2),
      O => leds(2)
    );
\leds[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE0E3202"
    )
        port map (
      I0 => settings_out(3),
      I1 => state(1),
      I2 => state(0),
      I3 => guess(3),
      I4 => ruleta_out(3),
      O => leds(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ruleta_out : in STD_LOGIC_VECTOR ( 3 downto 0 );
    settings_out : in STD_LOGIC_VECTOR ( 3 downto 0 );
    guess : in STD_LOGIC_VECTOR ( 3 downto 0 );
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_led_controller_0_0,led_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "led_controller,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller
     port map (
      guess(3 downto 0) => guess(3 downto 0),
      leds(3 downto 0) => leds(3 downto 0),
      ruleta_out(3 downto 0) => ruleta_out(3 downto 0),
      settings_out(3 downto 0) => settings_out(3 downto 0),
      state(1 downto 0) => state(1 downto 0)
    );
end STRUCTURE;
