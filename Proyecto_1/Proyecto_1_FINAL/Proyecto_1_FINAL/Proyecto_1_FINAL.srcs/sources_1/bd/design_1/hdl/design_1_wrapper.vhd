--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Wed Oct 15 19:59:36 2025
--Host        : Armando running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    btn_3 : in STD_LOGIC;
    clk : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb_B : out STD_LOGIC;
    rgb_G : out STD_LOGIC;
    rgb_R : out STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    btn_0 : in STD_LOGIC;
    btn_3 : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgb_R : out STD_LOGIC;
    rgb_G : out STD_LOGIC;
    rgb_B : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      btn_0 => btn_0,
      btn_1 => btn_1,
      btn_2 => btn_2,
      btn_3 => btn_3,
      clk => clk,
      leds(3 downto 0) => leds(3 downto 0),
      rgb_B => rgb_B,
      rgb_G => rgb_G,
      rgb_R => rgb_R,
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
