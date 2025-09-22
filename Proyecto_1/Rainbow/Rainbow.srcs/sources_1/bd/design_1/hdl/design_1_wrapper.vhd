--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Sep 20 17:45:30 2025
--Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
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
    reset_rtl : in STD_LOGIC;
    rgb_B : out STD_LOGIC;
    rgb_G : out STD_LOGIC;
    rgb_R : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    rgb_R : out STD_LOGIC;
    rgb_G : out STD_LOGIC;
    rgb_B : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      reset_rtl => reset_rtl,
      rgb_B => rgb_B,
      rgb_G => rgb_G,
      rgb_R => rgb_R,
      sys_clock => sys_clock
    );
end STRUCTURE;
