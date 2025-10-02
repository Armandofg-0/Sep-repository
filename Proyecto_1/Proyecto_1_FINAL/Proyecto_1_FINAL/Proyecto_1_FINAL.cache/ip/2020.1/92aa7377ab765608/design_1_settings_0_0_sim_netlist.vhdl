-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Oct  2 13:22:04 2025
-- Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_settings_0_0_sim_netlist.vhdl
-- Design      : design_1_settings_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_settings is
  port (
    difficulty : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_settings;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_settings is
  signal \FSM_onehot_level[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_level_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_level_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_level_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_level_reg_n_0_[3]\ : STD_LOGIC;
  signal difficulty0 : STD_LOGIC;
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
  signal level0 : STD_LOGIC;
  signal level_reg : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_level[0]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_level_reg[0]\ : label is "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:10000,iSTATE3:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_level_reg[1]\ : label is "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:10000,iSTATE3:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_level_reg[2]\ : label is "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:10000,iSTATE3:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_level_reg[3]\ : label is "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:10000,iSTATE3:01000";
  attribute SOFT_HLUTNM of \difficulty[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \difficulty[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \difficulty[3]_i_2\ : label is "soft_lutpair0";
begin
\FSM_onehot_level[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_level_reg_n_0_[1]\,
      I1 => \FSM_onehot_level_reg_n_0_[0]\,
      I2 => \FSM_onehot_level_reg_n_0_[2]\,
      O => \FSM_onehot_level[0]_i_1_n_0\
    );
\FSM_onehot_level[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => \led[3]_i_1_n_0\,
      I1 => \FSM_onehot_level_reg_n_0_[3]\,
      I2 => \FSM_onehot_level_reg_n_0_[2]\,
      I3 => \FSM_onehot_level_reg_n_0_[0]\,
      I4 => \FSM_onehot_level_reg_n_0_[1]\,
      I5 => btn_1,
      O => level0
    );
\FSM_onehot_level_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => level0,
      D => \FSM_onehot_level[0]_i_1_n_0\,
      Q => \FSM_onehot_level_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_level_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => level0,
      D => \FSM_onehot_level_reg_n_0_[0]\,
      Q => \FSM_onehot_level_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_level_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => level0,
      D => \FSM_onehot_level_reg_n_0_[1]\,
      Q => \FSM_onehot_level_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_level_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => level0,
      D => \FSM_onehot_level_reg_n_0_[2]\,
      Q => \FSM_onehot_level_reg_n_0_[3]\,
      R => '0'
    );
\difficulty[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_level_reg_n_0_[2]\,
      I1 => \FSM_onehot_level_reg_n_0_[3]\,
      O => level_reg(1)
    );
\difficulty[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_level_reg_n_0_[2]\,
      I1 => \FSM_onehot_level_reg_n_0_[1]\,
      I2 => \FSM_onehot_level_reg_n_0_[3]\,
      O => level_reg(2)
    );
\difficulty[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \FSM_onehot_level_reg_n_0_[1]\,
      I3 => \FSM_onehot_level_reg_n_0_[0]\,
      I4 => \FSM_onehot_level_reg_n_0_[2]\,
      I5 => \FSM_onehot_level_reg_n_0_[3]\,
      O => difficulty0
    );
\difficulty[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_level_reg_n_0_[3]\,
      I1 => \FSM_onehot_level_reg_n_0_[2]\,
      I2 => \FSM_onehot_level_reg_n_0_[0]\,
      I3 => \FSM_onehot_level_reg_n_0_[1]\,
      O => level_reg(3)
    );
\difficulty_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => difficulty0,
      D => \FSM_onehot_level_reg_n_0_[3]\,
      Q => difficulty(0),
      R => '0'
    );
\difficulty_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => difficulty0,
      D => level_reg(1),
      Q => difficulty(1),
      R => '0'
    );
\difficulty_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => difficulty0,
      D => level_reg(2),
      Q => difficulty(2),
      R => '0'
    );
\difficulty_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => difficulty0,
      D => level_reg(3),
      Q => difficulty(3),
      R => '0'
    );
\led[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \led[3]_i_1_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \led[3]_i_1_n_0\,
      D => \FSM_onehot_level_reg_n_0_[3]\,
      Q => led(0),
      R => '0'
    );
\led_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \led[3]_i_1_n_0\,
      D => level_reg(1),
      Q => led(1),
      R => '0'
    );
\led_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \led[3]_i_1_n_0\,
      D => level_reg(2),
      Q => led(2),
      R => '0'
    );
\led_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \led[3]_i_1_n_0\,
      D => level_reg(3),
      Q => led(3),
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
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    difficulty : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_settings_0_0,settings,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "settings,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_settings
     port map (
      btn_1 => btn_1,
      clk => clk,
      difficulty(3 downto 0) => difficulty(3 downto 0),
      led(3 downto 0) => led(3 downto 0),
      state(1 downto 0) => state(1 downto 0)
    );
end STRUCTURE;
