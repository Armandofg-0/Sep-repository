-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Oct  2 13:22:04 2025
-- Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ruleta_0_0_sim_netlist.vhdl
-- Design      : design_1_ruleta_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ruleta is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    special_clk_out : in STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stop : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ruleta;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ruleta is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal curr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dir : STD_LOGIC;
  signal direction_i_1_n_0 : STD_LOGIC;
  signal direction_i_2_n_0 : STD_LOGIC;
  signal jump_typ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \jump_type[0]_i_1_n_0\ : STD_LOGIC;
  signal \jump_type[1]_i_1_n_0\ : STD_LOGIC;
  signal led0 : STD_LOGIC;
  signal \led_signal[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_signal[0]_i_2_n_0\ : STD_LOGIC;
  signal \led_signal[0]_i_3_n_0\ : STD_LOGIC;
  signal \led_signal[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_signal[1]_i_2_n_0\ : STD_LOGIC;
  signal \led_signal[1]_i_3_n_0\ : STD_LOGIC;
  signal \led_signal[2]_i_1_n_0\ : STD_LOGIC;
  signal \led_signal[2]_i_2_n_0\ : STD_LOGIC;
  signal \led_signal[2]_i_3_n_0\ : STD_LOGIC;
  signal \led_signal[3]_i_2_n_0\ : STD_LOGIC;
  signal \led_signal[3]_i_3_n_0\ : STD_LOGIC;
  signal \led_signal[3]_i_4_n_0\ : STD_LOGIC;
  signal \led_signal[3]_i_5_n_0\ : STD_LOGIC;
  signal \led_signal[3]_i_6_n_0\ : STD_LOGIC;
  signal \led_signal[3]_i_7_n_0\ : STD_LOGIC;
  signal \led_signal[3]_i_8_n_0\ : STD_LOGIC;
  signal prev_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reset_done : STD_LOGIC;
  signal reset_req : STD_LOGIC;
  signal reset_req_i_1_n_0 : STD_LOGIC;
  signal step_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \step_cnter[0]_i_1_n_0\ : STD_LOGIC;
  signal \step_cnter[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_signal[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_signal[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_signal[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_signal[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_signal[3]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_signal[3]_i_6\ : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\curr_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state(0),
      Q => curr_state(0),
      R => '0'
    );
\curr_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state(1),
      Q => curr_state(1),
      R => '0'
    );
direction_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEA2AAA"
    )
        port map (
      I0 => dir,
      I1 => led0,
      I2 => direction_i_2_n_0,
      I3 => \^q\(3),
      I4 => \^q\(0),
      I5 => reset_req,
      O => direction_i_1_n_0
    );
direction_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => difficulty(3),
      I5 => difficulty(0),
      O => direction_i_2_n_0
    );
direction_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => special_clk_out,
      CE => '1',
      D => direction_i_1_n_0,
      Q => dir,
      R => '0'
    );
\jump_type[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F0F2F2FD0F0D0D0"
    )
        port map (
      I0 => difficulty(3),
      I1 => difficulty(0),
      I2 => led0,
      I3 => difficulty(2),
      I4 => difficulty(1),
      I5 => jump_typ(0),
      O => \jump_type[0]_i_1_n_0\
    );
\jump_type[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFF7FFAA000800"
    )
        port map (
      I0 => jump_typ(0),
      I1 => difficulty(1),
      I2 => difficulty(2),
      I3 => led0,
      I4 => \led_signal[3]_i_3_n_0\,
      I5 => jump_typ(1),
      O => \jump_type[1]_i_1_n_0\
    );
\jump_type_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => special_clk_out,
      CE => '1',
      D => \jump_type[0]_i_1_n_0\,
      Q => jump_typ(0),
      R => reset_req
    );
\jump_type_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => special_clk_out,
      CE => '1',
      D => \jump_type[1]_i_1_n_0\,
      Q => jump_typ(1),
      R => reset_req
    );
\led_signal[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5555FFEA4040"
    )
        port map (
      I0 => \led_signal[3]_i_3_n_0\,
      I1 => \led_signal[3]_i_4_n_0\,
      I2 => \^q\(3),
      I3 => \led_signal[3]_i_5_n_0\,
      I4 => \led_signal[0]_i_2_n_0\,
      I5 => \led_signal[0]_i_3_n_0\,
      O => \led_signal[0]_i_1_n_0\
    );
\led_signal[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => jump_typ(0),
      I3 => jump_typ(1),
      O => \led_signal[0]_i_2_n_0\
    );
\led_signal[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA080000000000"
    )
        port map (
      I0 => difficulty(2),
      I1 => step_cnt(1),
      I2 => step_cnt(0),
      I3 => difficulty(1),
      I4 => \led_signal[3]_i_8_n_0\,
      I5 => \^q\(1),
      O => \led_signal[0]_i_3_n_0\
    );
\led_signal[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5555FFEA4040"
    )
        port map (
      I0 => \led_signal[3]_i_3_n_0\,
      I1 => \led_signal[3]_i_4_n_0\,
      I2 => \^q\(0),
      I3 => \led_signal[3]_i_5_n_0\,
      I4 => \led_signal[1]_i_2_n_0\,
      I5 => \led_signal[1]_i_3_n_0\,
      O => \led_signal[1]_i_1_n_0\
    );
\led_signal[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => jump_typ(0),
      I3 => jump_typ(1),
      O => \led_signal[1]_i_2_n_0\
    );
\led_signal[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA080000000000"
    )
        port map (
      I0 => difficulty(2),
      I1 => step_cnt(1),
      I2 => step_cnt(0),
      I3 => difficulty(1),
      I4 => \led_signal[3]_i_8_n_0\,
      I5 => \^q\(2),
      O => \led_signal[1]_i_3_n_0\
    );
\led_signal[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5555FFEA4040"
    )
        port map (
      I0 => \led_signal[3]_i_3_n_0\,
      I1 => \led_signal[3]_i_4_n_0\,
      I2 => \^q\(1),
      I3 => \led_signal[3]_i_5_n_0\,
      I4 => \led_signal[2]_i_2_n_0\,
      I5 => \led_signal[2]_i_3_n_0\,
      O => \led_signal[2]_i_1_n_0\
    );
\led_signal[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => jump_typ(0),
      I3 => jump_typ(1),
      O => \led_signal[2]_i_2_n_0\
    );
\led_signal[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA080000000000"
    )
        port map (
      I0 => difficulty(2),
      I1 => step_cnt(1),
      I2 => step_cnt(0),
      I3 => difficulty(1),
      I4 => \led_signal[3]_i_8_n_0\,
      I5 => \^q\(3),
      O => \led_signal[2]_i_3_n_0\
    );
\led_signal[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => stop,
      I1 => curr_state(1),
      I2 => curr_state(0),
      O => led0
    );
\led_signal[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5555FFEA4040"
    )
        port map (
      I0 => \led_signal[3]_i_3_n_0\,
      I1 => \led_signal[3]_i_4_n_0\,
      I2 => \^q\(2),
      I3 => \led_signal[3]_i_5_n_0\,
      I4 => \led_signal[3]_i_6_n_0\,
      I5 => \led_signal[3]_i_7_n_0\,
      O => \led_signal[3]_i_2_n_0\
    );
\led_signal[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => difficulty(0),
      I1 => difficulty(3),
      O => \led_signal[3]_i_3_n_0\
    );
\led_signal[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C05FF05F"
    )
        port map (
      I0 => \led_signal[3]_i_8_n_0\,
      I1 => step_cnt(0),
      I2 => difficulty(2),
      I3 => difficulty(1),
      I4 => step_cnt(1),
      O => \led_signal[3]_i_4_n_0\
    );
\led_signal[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => difficulty(1),
      I1 => difficulty(2),
      O => \led_signal[3]_i_5_n_0\
    );
\led_signal[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => jump_typ(0),
      I3 => jump_typ(1),
      O => \led_signal[3]_i_6_n_0\
    );
\led_signal[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AA080000000000"
    )
        port map (
      I0 => difficulty(2),
      I1 => step_cnt(1),
      I2 => step_cnt(0),
      I3 => difficulty(1),
      I4 => \led_signal[3]_i_8_n_0\,
      I5 => \^q\(0),
      O => \led_signal[3]_i_7_n_0\
    );
\led_signal[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555745"
    )
        port map (
      I0 => dir,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => \led_signal[3]_i_8_n_0\
    );
\led_signal_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => special_clk_out,
      CE => led0,
      D => \led_signal[0]_i_1_n_0\,
      Q => \^q\(0),
      S => reset_req
    );
\led_signal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => special_clk_out,
      CE => led0,
      D => \led_signal[1]_i_1_n_0\,
      Q => \^q\(1),
      R => reset_req
    );
\led_signal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => special_clk_out,
      CE => led0,
      D => \led_signal[2]_i_1_n_0\,
      Q => \^q\(2),
      R => reset_req
    );
\led_signal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => special_clk_out,
      CE => led0,
      D => \led_signal[3]_i_2_n_0\,
      Q => \^q\(3),
      R => reset_req
    );
\prev_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => curr_state(0),
      Q => prev_state(0),
      R => '0'
    );
\prev_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => curr_state(1),
      Q => prev_state(1),
      R => '0'
    );
reset_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => special_clk_out,
      CE => '1',
      D => reset_req,
      Q => reset_done,
      R => '0'
    );
reset_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200020"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => prev_state(0),
      I3 => prev_state(1),
      I4 => reset_done,
      I5 => reset_req,
      O => reset_req_i_1_n_0
    );
reset_req_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => reset_req_i_1_n_0,
      Q => reset_req,
      R => '0'
    );
\step_cnter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => led0,
      I1 => difficulty(2),
      I2 => difficulty(1),
      I3 => difficulty(3),
      I4 => difficulty(0),
      I5 => step_cnt(0),
      O => \step_cnter[0]_i_1_n_0\
    );
\step_cnter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF20000000"
    )
        port map (
      I0 => step_cnt(0),
      I1 => \led_signal[3]_i_3_n_0\,
      I2 => difficulty(1),
      I3 => difficulty(2),
      I4 => led0,
      I5 => step_cnt(1),
      O => \step_cnter[1]_i_1_n_0\
    );
\step_cnter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => special_clk_out,
      CE => '1',
      D => \step_cnter[0]_i_1_n_0\,
      Q => step_cnt(0),
      R => reset_req
    );
\step_cnter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => special_clk_out,
      CE => '1',
      D => \step_cnter[1]_i_1_n_0\,
      Q => step_cnt(1),
      R => reset_req
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
    special_clk_out : in STD_LOGIC;
    stop : in STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 3 downto 0 );
    result : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ruleta_0_0,ruleta,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ruleta,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ruleta
     port map (
      Q(3 downto 0) => result(3 downto 0),
      clk => clk,
      difficulty(3 downto 0) => difficulty(3 downto 0),
      special_clk_out => special_clk_out,
      state(1 downto 0) => state(1 downto 0),
      stop => stop
    );
end STRUCTURE;
