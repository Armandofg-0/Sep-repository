-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Oct  2 13:22:04 2025
-- Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_apuesta_0_0_sim_netlist.vhdl
-- Design      : design_1_apuesta_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apuesta is
  port (
    guess : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apuesta;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apuesta is
  signal guess16_out : STD_LOGIC;
  signal \guess[1]_i_1_n_0\ : STD_LOGIC;
  signal \guess[2]_i_1_n_0\ : STD_LOGIC;
  signal \guess[3]_i_1_n_0\ : STD_LOGIC;
  signal \guess[3]_i_2_n_0\ : STD_LOGIC;
  signal \guess[3]_i_3_n_0\ : STD_LOGIC;
  signal sw0_r : STD_LOGIC;
  signal sw1_r : STD_LOGIC;
  signal sw2_r : STD_LOGIC;
  signal sw2_r_i_1_n_0 : STD_LOGIC;
  signal sw3_r_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \guess[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \guess[1]_i_1\ : label is "soft_lutpair0";
begin
\guess[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sw(0),
      I1 => sw0_r,
      O => guess16_out
    );
\guess[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => sw1_r,
      I1 => sw(1),
      I2 => sw0_r,
      I3 => sw(0),
      O => \guess[1]_i_1_n_0\
    );
\guess[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404440400004404"
    )
        port map (
      I0 => sw2_r,
      I1 => sw(2),
      I2 => sw(0),
      I3 => sw0_r,
      I4 => sw(1),
      I5 => sw1_r,
      O => \guess[2]_i_1_n_0\
    );
\guess[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44440400"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => sw0_r,
      I3 => sw(0),
      I4 => \guess[3]_i_3_n_0\,
      O => \guess[3]_i_1_n_0\
    );
\guess[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => sw1_r,
      I1 => sw(1),
      I2 => sw(2),
      I3 => sw2_r,
      I4 => sw(0),
      I5 => sw0_r,
      O => \guess[3]_i_2_n_0\
    );
\guess[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => sw1_r,
      I1 => sw(1),
      I2 => sw(3),
      I3 => sw3_r_reg_n_0,
      I4 => sw(2),
      I5 => sw2_r,
      O => \guess[3]_i_3_n_0\
    );
\guess_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \guess[3]_i_1_n_0\,
      D => guess16_out,
      Q => guess(0),
      R => '0'
    );
\guess_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \guess[3]_i_1_n_0\,
      D => \guess[1]_i_1_n_0\,
      Q => guess(1),
      R => '0'
    );
\guess_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \guess[3]_i_1_n_0\,
      D => \guess[2]_i_1_n_0\,
      Q => guess(2),
      R => '0'
    );
\guess_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \guess[3]_i_1_n_0\,
      D => \guess[3]_i_2_n_0\,
      Q => guess(3),
      R => '0'
    );
sw0_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw2_r_i_1_n_0,
      D => sw(0),
      Q => sw0_r,
      R => '0'
    );
sw1_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw2_r_i_1_n_0,
      D => sw(1),
      Q => sw1_r,
      R => '0'
    );
sw2_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => sw2_r_i_1_n_0
    );
sw2_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw2_r_i_1_n_0,
      D => sw(2),
      Q => sw2_r,
      R => '0'
    );
sw3_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw2_r_i_1_n_0,
      D => sw(3),
      Q => sw3_r_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    guess : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_apuesta_0_0,apuesta,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "apuesta,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apuesta
     port map (
      clk => clk,
      guess(3 downto 0) => guess(3 downto 0),
      state(1 downto 0) => state(1 downto 0),
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
