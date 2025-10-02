-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Oct  2 13:25:37 2025
-- Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_clk_manager_0_0_sim_netlist.vhdl
-- Design      : design_1_clk_manager_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_manager is
  port (
    special_clk_out : out STD_LOGIC;
    stop : out STD_LOGIC;
    btn_3 : in STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_manager;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_manager is
  signal \_inferred__1/i___0_carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__3_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__3_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__3_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__3_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__4_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__4_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__4_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__4_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__5_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__5_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__5_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__5_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__6_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry__6_n_3\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry_n_0\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry_n_1\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry_n_2\ : STD_LOGIC;
  signal \_inferred__1/i___0_carry_n_3\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal counter : STD_LOGIC;
  signal counter12_in : STD_LOGIC;
  signal \counter1__15\ : STD_LOGIC;
  signal \counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_1\ : STD_LOGIC;
  signal \counter1_carry__0_n_2\ : STD_LOGIC;
  signal \counter1_carry__0_n_3\ : STD_LOGIC;
  signal \counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_1\ : STD_LOGIC;
  signal \counter1_carry__1_n_2\ : STD_LOGIC;
  signal \counter1_carry__1_n_3\ : STD_LOGIC;
  signal \counter1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \counter1_carry__2_n_1\ : STD_LOGIC;
  signal \counter1_carry__2_n_2\ : STD_LOGIC;
  signal \counter1_carry__2_n_3\ : STD_LOGIC;
  signal counter1_carry_i_1_n_0 : STD_LOGIC;
  signal counter1_carry_i_2_n_0 : STD_LOGIC;
  signal counter1_carry_i_3_n_0 : STD_LOGIC;
  signal counter1_carry_i_4_n_0 : STD_LOGIC;
  signal counter1_carry_i_5_n_0 : STD_LOGIC;
  signal counter1_carry_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal \counter1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \counter1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i___0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i___0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_10_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \i___0_carry__3_i_9_n_0\ : STD_LOGIC;
  signal \i___0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal maximum : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \maximum0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_n_0\ : STD_LOGIC;
  signal \maximum0_carry__0_n_1\ : STD_LOGIC;
  signal \maximum0_carry__0_n_2\ : STD_LOGIC;
  signal \maximum0_carry__0_n_3\ : STD_LOGIC;
  signal \maximum0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \maximum0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \maximum0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \maximum0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \maximum0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \maximum0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \maximum0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \maximum0_carry__1_n_0\ : STD_LOGIC;
  signal \maximum0_carry__1_n_1\ : STD_LOGIC;
  signal \maximum0_carry__1_n_2\ : STD_LOGIC;
  signal \maximum0_carry__1_n_3\ : STD_LOGIC;
  signal \maximum0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \maximum0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \maximum0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \maximum0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \maximum0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \maximum0_carry__2_n_0\ : STD_LOGIC;
  signal \maximum0_carry__2_n_1\ : STD_LOGIC;
  signal \maximum0_carry__2_n_2\ : STD_LOGIC;
  signal \maximum0_carry__2_n_3\ : STD_LOGIC;
  signal maximum0_carry_i_1_n_0 : STD_LOGIC;
  signal maximum0_carry_i_2_n_0 : STD_LOGIC;
  signal maximum0_carry_i_3_n_0 : STD_LOGIC;
  signal maximum0_carry_i_4_n_0 : STD_LOGIC;
  signal maximum0_carry_i_5_n_0 : STD_LOGIC;
  signal maximum0_carry_i_6_n_0 : STD_LOGIC;
  signal maximum0_carry_n_0 : STD_LOGIC;
  signal maximum0_carry_n_1 : STD_LOGIC;
  signal maximum0_carry_n_2 : STD_LOGIC;
  signal maximum0_carry_n_3 : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \maximum0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal maximum1_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \maximum[31]_i_1_n_0\ : STD_LOGIC;
  signal \maximum[31]_i_2_n_0\ : STD_LOGIC;
  signal running : STD_LOGIC;
  signal running_reg_n_0 : STD_LOGIC;
  signal special_clk : STD_LOGIC;
  signal special_clk_i_1_n_0 : STD_LOGIC;
  signal \^stop\ : STD_LOGIC;
  signal stop_i_1_n_0 : STD_LOGIC;
  signal up_r : STD_LOGIC;
  signal \NLW__inferred__1/i___0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__1/i___0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_maximum0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maximum0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maximum0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maximum0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maximum0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maximum0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maximum0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maximum0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__1/i___0_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i___0_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i___0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i___0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i___0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i___0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i___0_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i___0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i___0_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i___0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i___0_carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i___0_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i___0_carry__5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i___0_carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i___0_carry__6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i___0_carry__6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of counter1_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of counter1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \counter1_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \counter1_carry__1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter1_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \counter1_carry__2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter1_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \counter1_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \counter1_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \counter1_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter_reg[0]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter_reg[12]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter_reg[16]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \counter_reg[20]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter_reg[20]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter_reg[24]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \counter_reg[28]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter_reg[28]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \counter_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i___0_carry__1_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i___0_carry__1_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i___0_carry__1_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i___0_carry__1_i_9\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD of maximum0_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of maximum0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \maximum0_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \maximum0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \maximum0_carry__1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \maximum0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \maximum0_carry__2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \maximum0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \maximum0_inferred__0/i__carry\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \maximum0_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \maximum0_inferred__0/i__carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \maximum0_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \maximum0_inferred__0/i__carry__1\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \maximum0_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \maximum0_inferred__0/i__carry__2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \maximum0_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of running_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of stop_i_1 : label is "soft_lutpair1";
begin
  stop <= \^stop\;
\_inferred__1/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1/i___0_carry_n_0\,
      CO(2) => \_inferred__1/i___0_carry_n_1\,
      CO(1) => \_inferred__1/i___0_carry_n_2\,
      CO(0) => \_inferred__1/i___0_carry_n_3\,
      CYINIT => btn_3,
      DI(3 downto 0) => maximum(4 downto 1),
      O(3 downto 0) => maximum1_in(4 downto 1),
      S(3) => \i___0_carry_i_1_n_0\,
      S(2) => \i___0_carry_i_2_n_0\,
      S(1) => \i___0_carry_i_3_n_0\,
      S(0) => \i___0_carry_i_4_n_0\
    );
\_inferred__1/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry_n_0\,
      CO(3) => \_inferred__1/i___0_carry__0_n_0\,
      CO(2) => \_inferred__1/i___0_carry__0_n_1\,
      CO(1) => \_inferred__1/i___0_carry__0_n_2\,
      CO(0) => \_inferred__1/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => maximum(7),
      DI(2) => btn_3,
      DI(1) => \i___0_carry__0_i_1_n_0\,
      DI(0) => maximum(5),
      O(3 downto 0) => maximum1_in(8 downto 5),
      S(3) => \i___0_carry__0_i_2_n_0\,
      S(2) => \i___0_carry__0_i_3_n_0\,
      S(1) => \i___0_carry__0_i_4_n_0\,
      S(0) => \i___0_carry__0_i_5_n_0\
    );
\_inferred__1/i___0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry__0_n_0\,
      CO(3) => \_inferred__1/i___0_carry__1_n_0\,
      CO(2) => \_inferred__1/i___0_carry__1_n_1\,
      CO(1) => \_inferred__1/i___0_carry__1_n_2\,
      CO(0) => \_inferred__1/i___0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__1_i_1_n_0\,
      DI(2) => \i___0_carry__1_i_2_n_0\,
      DI(1) => \i___0_carry__1_i_3_n_0\,
      DI(0) => \i___0_carry__1_i_4_n_0\,
      O(3 downto 0) => maximum1_in(12 downto 9),
      S(3) => \i___0_carry__1_i_5_n_0\,
      S(2) => \i___0_carry__1_i_6_n_0\,
      S(1) => \i___0_carry__1_i_7_n_0\,
      S(0) => \i___0_carry__1_i_8_n_0\
    );
\_inferred__1/i___0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry__1_n_0\,
      CO(3) => \_inferred__1/i___0_carry__2_n_0\,
      CO(2) => \_inferred__1/i___0_carry__2_n_1\,
      CO(1) => \_inferred__1/i___0_carry__2_n_2\,
      CO(0) => \_inferred__1/i___0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__2_i_1_n_0\,
      DI(2) => \i___0_carry__2_i_2_n_0\,
      DI(1) => \i___0_carry__2_i_3_n_0\,
      DI(0) => \i___0_carry__2_i_4_n_0\,
      O(3 downto 0) => maximum1_in(16 downto 13),
      S(3) => \i___0_carry__2_i_5_n_0\,
      S(2) => \i___0_carry__2_i_6_n_0\,
      S(1) => \i___0_carry__2_i_7_n_0\,
      S(0) => \i___0_carry__2_i_8_n_0\
    );
\_inferred__1/i___0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry__2_n_0\,
      CO(3) => \_inferred__1/i___0_carry__3_n_0\,
      CO(2) => \_inferred__1/i___0_carry__3_n_1\,
      CO(1) => \_inferred__1/i___0_carry__3_n_2\,
      CO(0) => \_inferred__1/i___0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__3_i_1_n_0\,
      DI(2) => \i___0_carry__3_i_2_n_0\,
      DI(1) => \i___0_carry__3_i_3_n_0\,
      DI(0) => \i___0_carry__3_i_4_n_0\,
      O(3 downto 0) => maximum1_in(20 downto 17),
      S(3) => \i___0_carry__3_i_5_n_0\,
      S(2) => \i___0_carry__3_i_6_n_0\,
      S(1) => \i___0_carry__3_i_7_n_0\,
      S(0) => \i___0_carry__3_i_8_n_0\
    );
\_inferred__1/i___0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry__3_n_0\,
      CO(3) => \_inferred__1/i___0_carry__4_n_0\,
      CO(2) => \_inferred__1/i___0_carry__4_n_1\,
      CO(1) => \_inferred__1/i___0_carry__4_n_2\,
      CO(0) => \_inferred__1/i___0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => maximum(23 downto 21),
      DI(0) => \i___0_carry__4_i_1_n_0\,
      O(3 downto 0) => maximum1_in(24 downto 21),
      S(3) => \i___0_carry__4_i_2_n_0\,
      S(2) => \i___0_carry__4_i_3_n_0\,
      S(1) => \i___0_carry__4_i_4_n_0\,
      S(0) => \i___0_carry__4_i_5_n_0\
    );
\_inferred__1/i___0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry__4_n_0\,
      CO(3) => \_inferred__1/i___0_carry__5_n_0\,
      CO(2) => \_inferred__1/i___0_carry__5_n_1\,
      CO(1) => \_inferred__1/i___0_carry__5_n_2\,
      CO(0) => \_inferred__1/i___0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => maximum(27 downto 24),
      O(3 downto 0) => maximum1_in(28 downto 25),
      S(3) => \i___0_carry__5_i_1_n_0\,
      S(2) => \i___0_carry__5_i_2_n_0\,
      S(1) => \i___0_carry__5_i_3_n_0\,
      S(0) => \i___0_carry__5_i_4_n_0\
    );
\_inferred__1/i___0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i___0_carry__5_n_0\,
      CO(3 downto 2) => \NLW__inferred__1/i___0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \_inferred__1/i___0_carry__6_n_2\,
      CO(0) => \_inferred__1/i___0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => maximum(29 downto 28),
      O(3) => \NLW__inferred__1/i___0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => maximum1_in(31 downto 29),
      S(3) => '0',
      S(2) => \i___0_carry__6_i_1_n_0\,
      S(1) => \i___0_carry__6_i_2_n_0\,
      S(0) => \i___0_carry__6_i_3_n_0\
    );
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter1_carry_n_0,
      CO(2) => counter1_carry_n_1,
      CO(1) => counter1_carry_n_2,
      CO(0) => counter1_carry_n_3,
      CYINIT => '1',
      DI(3) => maximum(7),
      DI(2) => maximum(5),
      DI(1) => counter1_carry_i_1_n_0,
      DI(0) => maximum(1),
      O(3 downto 0) => NLW_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter1_carry_i_2_n_0,
      S(2) => counter1_carry_i_3_n_0,
      S(1) => counter1_carry_i_4_n_0,
      S(0) => counter1_carry_i_5_n_0
    );
\counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter1_carry_n_0,
      CO(3) => \counter1_carry__0_n_0\,
      CO(2) => \counter1_carry__0_n_1\,
      CO(1) => \counter1_carry__0_n_2\,
      CO(0) => \counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => maximum(13),
      DI(1) => maximum(11),
      DI(0) => \counter1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__0_i_2_n_0\,
      S(2) => \counter1_carry__0_i_3_n_0\,
      S(1) => \counter1_carry__0_i_4_n_0\,
      S(0) => \counter1_carry__0_i_5_n_0\
    );
\counter1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => maximum(8),
      I1 => maximum(9),
      O => \counter1_carry__0_i_1_n_0\
    );
\counter1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => maximum(15),
      I1 => maximum(14),
      O => \counter1_carry__0_i_2_n_0\
    );
\counter1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(12),
      I1 => maximum(13),
      O => \counter1_carry__0_i_3_n_0\
    );
\counter1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(10),
      I1 => maximum(11),
      O => \counter1_carry__0_i_4_n_0\
    );
\counter1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(9),
      I1 => maximum(8),
      O => \counter1_carry__0_i_5_n_0\
    );
\counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__0_n_0\,
      CO(3) => \counter1_carry__1_n_0\,
      CO(2) => \counter1_carry__1_n_1\,
      CO(1) => \counter1_carry__1_n_2\,
      CO(0) => \counter1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => maximum(21),
      DI(1) => '0',
      DI(0) => \counter1_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__1_i_2_n_0\,
      S(2) => \counter1_carry__1_i_3_n_0\,
      S(1) => \counter1_carry__1_i_4_n_0\,
      S(0) => \counter1_carry__1_i_5_n_0\
    );
\counter1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => maximum(16),
      I1 => maximum(17),
      O => \counter1_carry__1_i_1_n_0\
    );
\counter1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => maximum(22),
      I1 => maximum(23),
      O => \counter1_carry__1_i_2_n_0\
    );
\counter1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(20),
      I1 => maximum(21),
      O => \counter1_carry__1_i_3_n_0\
    );
\counter1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => maximum(19),
      I1 => maximum(18),
      O => \counter1_carry__1_i_4_n_0\
    );
\counter1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(16),
      I1 => maximum(17),
      O => \counter1_carry__1_i_5_n_0\
    );
\counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__1_n_0\,
      CO(3) => \counter1__15\,
      CO(2) => \counter1_carry__2_n_1\,
      CO(1) => \counter1_carry__2_n_2\,
      CO(0) => \counter1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \counter1_carry__2_i_1_n_0\,
      DI(2) => \counter1_carry__2_i_2_n_0\,
      DI(1) => \counter1_carry__2_i_3_n_0\,
      DI(0) => maximum(25),
      O(3 downto 0) => \NLW_counter1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry__2_i_4_n_0\,
      S(2) => \counter1_carry__2_i_5_n_0\,
      S(1) => \counter1_carry__2_i_6_n_0\,
      S(0) => \counter1_carry__2_i_7_n_0\
    );
\counter1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(30),
      I1 => maximum(31),
      O => \counter1_carry__2_i_1_n_0\
    );
\counter1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => maximum(28),
      I1 => maximum(29),
      O => \counter1_carry__2_i_2_n_0\
    );
\counter1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => maximum(26),
      I1 => maximum(27),
      O => \counter1_carry__2_i_3_n_0\
    );
\counter1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(30),
      I1 => maximum(31),
      O => \counter1_carry__2_i_4_n_0\
    );
\counter1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(28),
      I1 => maximum(29),
      O => \counter1_carry__2_i_5_n_0\
    );
\counter1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(26),
      I1 => maximum(27),
      O => \counter1_carry__2_i_6_n_0\
    );
\counter1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(24),
      I1 => maximum(25),
      O => \counter1_carry__2_i_7_n_0\
    );
counter1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => maximum(2),
      I1 => maximum(3),
      O => counter1_carry_i_1_n_0
    );
counter1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(6),
      I1 => maximum(7),
      O => counter1_carry_i_2_n_0
    );
counter1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(4),
      I1 => maximum(5),
      O => counter1_carry_i_3_n_0
    );
counter1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(2),
      I1 => maximum(3),
      O => counter1_carry_i_4_n_0
    );
counter1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(1),
      O => counter1_carry_i_5_n_0
    );
\counter1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter1_inferred__0/i__carry_n_0\,
      CO(2) => \counter1_inferred__0/i__carry_n_1\,
      CO(1) => \counter1_inferred__0/i__carry_n_2\,
      CO(0) => \counter1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\counter1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_inferred__0/i__carry_n_0\,
      CO(3) => \counter1_inferred__0/i__carry__0_n_0\,
      CO(2) => \counter1_inferred__0/i__carry__0_n_1\,
      CO(1) => \counter1_inferred__0/i__carry__0_n_2\,
      CO(0) => \counter1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\counter1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_counter1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => counter12_in,
      CO(1) => \counter1_inferred__0/i__carry__1_n_2\,
      CO(0) => \counter1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1__2_n_0\,
      S(1) => \i__carry_i_2__2_n_0\,
      S(0) => \i__carry_i_3__2_n_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DC"
    )
        port map (
      I0 => \counter1__15\,
      I1 => btn_3,
      I2 => running_reg_n_0,
      I3 => up_r,
      O => counter
    );
\counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter12_in,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter12_in,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter12_in,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter12_in,
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter12_in,
      O => \counter[0]_i_7_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter12_in,
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter12_in,
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(13),
      I1 => counter12_in,
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter12_in,
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(19),
      I1 => counter12_in,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter12_in,
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(17),
      I1 => counter12_in,
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter12_in,
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(23),
      I1 => counter12_in,
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter12_in,
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(21),
      I1 => counter12_in,
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter12_in,
      O => \counter[20]_i_5_n_0\
    );
\counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(27),
      I1 => counter12_in,
      O => \counter[24]_i_2_n_0\
    );
\counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter12_in,
      O => \counter[24]_i_3_n_0\
    );
\counter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(25),
      I1 => counter12_in,
      O => \counter[24]_i_4_n_0\
    );
\counter[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter12_in,
      O => \counter[24]_i_5_n_0\
    );
\counter[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(31),
      I1 => counter12_in,
      O => \counter[28]_i_2_n_0\
    );
\counter[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(30),
      I1 => counter12_in,
      O => \counter[28]_i_3_n_0\
    );
\counter[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(29),
      I1 => counter12_in,
      O => \counter[28]_i_4_n_0\
    );
\counter[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(28),
      I1 => counter12_in,
      O => \counter[28]_i_5_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter12_in,
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter12_in,
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter12_in,
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter12_in,
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter12_in,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter12_in,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter12_in,
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter12_in,
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[0]_i_2_n_7\,
      Q => counter_reg(0),
      R => clear
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_3_n_0\,
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3) => \counter[0]_i_4_n_0\,
      S(2) => \counter[0]_i_5_n_0\,
      S(1) => \counter[0]_i_6_n_0\,
      S(0) => \counter[0]_i_7_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[0]_i_2_n_6\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3) => \counter[24]_i_2_n_0\,
      S(2) => \counter[24]_i_3_n_0\,
      S(1) => \counter[24]_i_4_n_0\,
      S(0) => \counter[24]_i_5_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3) => \counter[28]_i_2_n_0\,
      S(2) => \counter[28]_i_3_n_0\,
      S(1) => \counter[28]_i_4_n_0\,
      S(0) => \counter[28]_i_5_n_0\
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[0]_i_2_n_5\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => clear
    );
\i___0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => btn_3,
      O => \i___0_carry__0_i_1_n_0\
    );
\i___0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(7),
      I1 => maximum(8),
      O => \i___0_carry__0_i_2_n_0\
    );
\i___0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => btn_3,
      I1 => maximum(7),
      O => \i___0_carry__0_i_3_n_0\
    );
\i___0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => btn_3,
      I1 => maximum(6),
      O => \i___0_carry__0_i_4_n_0\
    );
\i___0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666696"
    )
        port map (
      I0 => maximum(5),
      I1 => btn_3,
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => difficulty(1),
      O => \i___0_carry__0_i_5_n_0\
    );
\i___0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22CC328C22CC28C3"
    )
        port map (
      I0 => maximum(10),
      I1 => maximum(11),
      I2 => difficulty(1),
      I3 => btn_3,
      I4 => \i___0_carry__1_i_9_n_0\,
      I5 => difficulty(2),
      O => \i___0_carry__1_i_1_n_0\
    );
\i___0_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => difficulty(3),
      I1 => difficulty(0),
      I2 => difficulty(2),
      O => \i___0_carry__1_i_10_n_0\
    );
\i___0_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => difficulty(3),
      I1 => difficulty(0),
      I2 => difficulty(1),
      O => \i___0_carry__1_i_11_n_0\
    );
\i___0_carry__1_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(0),
      I2 => difficulty(3),
      I3 => difficulty(1),
      O => \i___0_carry__1_i_12_n_0\
    );
\i___0_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595A6959595956A"
    )
        port map (
      I0 => maximum(11),
      I1 => maximum(10),
      I2 => btn_3,
      I3 => difficulty(1),
      I4 => \i___0_carry__1_i_9_n_0\,
      I5 => difficulty(2),
      O => \i___0_carry__1_i_13_n_0\
    );
\i___0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080880888080080"
    )
        port map (
      I0 => maximum(9),
      I1 => maximum(8),
      I2 => difficulty(1),
      I3 => \i___0_carry__1_i_10_n_0\,
      I4 => btn_3,
      I5 => maximum(10),
      O => \i___0_carry__1_i_2_n_0\
    );
\i___0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8878778777878878"
    )
        port map (
      I0 => maximum(9),
      I1 => maximum(8),
      I2 => difficulty(1),
      I3 => \i___0_carry__1_i_10_n_0\,
      I4 => btn_3,
      I5 => maximum(10),
      O => \i___0_carry__1_i_3_n_0\
    );
\i___0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => difficulty(3),
      I1 => difficulty(0),
      I2 => difficulty(2),
      O => \i___0_carry__1_i_4_n_0\
    );
\i___0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666699996666696"
    )
        port map (
      I0 => \i___0_carry__1_i_1_n_0\,
      I1 => maximum(12),
      I2 => maximum(11),
      I3 => btn_3,
      I4 => \i___0_carry__1_i_11_n_0\,
      I5 => difficulty(2),
      O => \i___0_carry__1_i_5_n_0\
    );
\i___0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96FFFFFF69000000"
    )
        port map (
      I0 => maximum(10),
      I1 => btn_3,
      I2 => \i___0_carry__1_i_12_n_0\,
      I3 => maximum(8),
      I4 => maximum(9),
      I5 => \i___0_carry__1_i_13_n_0\,
      O => \i___0_carry__1_i_6_n_0\
    );
\i___0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A555A55596666999"
    )
        port map (
      I0 => maximum(10),
      I1 => difficulty(1),
      I2 => maximum(8),
      I3 => maximum(9),
      I4 => btn_3,
      I5 => \i___0_carry__1_i_10_n_0\,
      O => \i___0_carry__1_i_7_n_0\
    );
\i___0_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF2020DF"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(0),
      I2 => difficulty(3),
      I3 => maximum(9),
      I4 => maximum(8),
      O => \i___0_carry__1_i_8_n_0\
    );
\i___0_carry__1_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => difficulty(0),
      I1 => difficulty(3),
      O => \i___0_carry__1_i_9_n_0\
    );
\i___0_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9898989862986264"
    )
        port map (
      I0 => maximum(15),
      I1 => btn_3,
      I2 => maximum(14),
      I3 => difficulty(2),
      I4 => difficulty(1),
      I5 => \i___0_carry__1_i_9_n_0\,
      O => \i___0_carry__2_i_1_n_0\
    );
\i___0_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33C60005CC39FFFA"
    )
        port map (
      I0 => difficulty(1),
      I1 => btn_3,
      I2 => difficulty(2),
      I3 => \i___0_carry__1_i_9_n_0\,
      I4 => maximum(14),
      I5 => maximum(15),
      O => \i___0_carry__2_i_10_n_0\
    );
\i___0_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CF03CF0E12D2DE1"
    )
        port map (
      I0 => difficulty(1),
      I1 => maximum(13),
      I2 => maximum(14),
      I3 => btn_3,
      I4 => difficulty(2),
      I5 => \i___0_carry__1_i_9_n_0\,
      O => \i___0_carry__2_i_11_n_0\
    );
\i___0_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A9F3F359560C0C"
    )
        port map (
      I0 => btn_3,
      I1 => difficulty(2),
      I2 => \i___0_carry__1_i_9_n_0\,
      I3 => difficulty(1),
      I4 => maximum(12),
      I5 => maximum(13),
      O => \i___0_carry__2_i_12_n_0\
    );
\i___0_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AB0B000E00F0FE"
    )
        port map (
      I0 => maximum(13),
      I1 => difficulty(1),
      I2 => \i___0_carry__1_i_9_n_0\,
      I3 => difficulty(2),
      I4 => btn_3,
      I5 => maximum(14),
      O => \i___0_carry__2_i_2_n_0\
    );
\i___0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6464986464646291"
    )
        port map (
      I0 => maximum(13),
      I1 => btn_3,
      I2 => maximum(12),
      I3 => difficulty(2),
      I4 => \i___0_carry__1_i_9_n_0\,
      I5 => difficulty(1),
      O => \i___0_carry__2_i_3_n_0\
    );
\i___0_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"832C8338"
    )
        port map (
      I0 => maximum(11),
      I1 => maximum(12),
      I2 => btn_3,
      I3 => \i___0_carry__1_i_11_n_0\,
      I4 => difficulty(2),
      O => \i___0_carry__2_i_4_n_0\
    );
\i___0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i___0_carry__2_i_1_n_0\,
      I1 => \i___0_carry__2_i_9_n_0\,
      O => \i___0_carry__2_i_5_n_0\
    );
\i___0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i___0_carry__2_i_2_n_0\,
      I1 => \i___0_carry__2_i_10_n_0\,
      O => \i___0_carry__2_i_6_n_0\
    );
\i___0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i___0_carry__2_i_3_n_0\,
      I1 => \i___0_carry__2_i_11_n_0\,
      O => \i___0_carry__2_i_7_n_0\
    );
\i___0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3FDE3C33C021C"
    )
        port map (
      I0 => difficulty(2),
      I1 => \i___0_carry__1_i_11_n_0\,
      I2 => btn_3,
      I3 => maximum(12),
      I4 => maximum(11),
      I5 => \i___0_carry__2_i_12_n_0\,
      O => \i___0_carry__2_i_8_n_0\
    );
\i___0_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000FF0D62926D9"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => maximum(15),
      I3 => maximum(16),
      I4 => btn_3,
      I5 => \i___0_carry__1_i_9_n_0\,
      O => \i___0_carry__2_i_9_n_0\
    );
\i___0_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3338333388838888"
    )
        port map (
      I0 => maximum(18),
      I1 => maximum(19),
      I2 => difficulty(1),
      I3 => difficulty(0),
      I4 => difficulty(3),
      I5 => btn_3,
      O => \i___0_carry__3_i_1_n_0\
    );
\i___0_carry__3_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A7A90D035856F2FC"
    )
        port map (
      I0 => maximum(16),
      I1 => difficulty(1),
      I2 => \i___0_carry__1_i_9_n_0\,
      I3 => difficulty(2),
      I4 => btn_3,
      I5 => maximum(17),
      O => \i___0_carry__3_i_10_n_0\
    );
\i___0_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE1111EE401001AE"
    )
        port map (
      I0 => \i___0_carry__1_i_9_n_0\,
      I1 => difficulty(1),
      I2 => difficulty(2),
      I3 => btn_3,
      I4 => maximum(18),
      I5 => maximum(17),
      O => \i___0_carry__3_i_2_n_0\
    );
\i___0_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A4A854A4A4A5885"
    )
        port map (
      I0 => maximum(17),
      I1 => maximum(16),
      I2 => btn_3,
      I3 => difficulty(2),
      I4 => \i___0_carry__1_i_9_n_0\,
      I5 => difficulty(1),
      O => \i___0_carry__3_i_3_n_0\
    );
\i___0_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666669622422214"
    )
        port map (
      I0 => btn_3,
      I1 => maximum(16),
      I2 => difficulty(2),
      I3 => \i___0_carry__1_i_9_n_0\,
      I4 => difficulty(1),
      I5 => maximum(15),
      O => \i___0_carry__3_i_4_n_0\
    );
\i___0_carry__3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"363C9C3C"
    )
        port map (
      I0 => maximum(18),
      I1 => maximum(20),
      I2 => btn_3,
      I3 => maximum(19),
      I4 => \i___0_carry__1_i_11_n_0\,
      O => \i___0_carry__3_i_5_n_0\
    );
\i___0_carry__3_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66969666"
    )
        port map (
      I0 => \i___0_carry__3_i_2_n_0\,
      I1 => maximum(19),
      I2 => maximum(18),
      I3 => \i___0_carry__1_i_11_n_0\,
      I4 => btn_3,
      O => \i___0_carry__3_i_6_n_0\
    );
\i___0_carry__3_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55559AA9"
    )
        port map (
      I0 => \i___0_carry__3_i_3_n_0\,
      I1 => maximum(17),
      I2 => maximum(18),
      I3 => \i___0_carry__1_i_10_n_0\,
      I4 => \i___0_carry__3_i_9_n_0\,
      O => \i___0_carry__3_i_7_n_0\
    );
\i___0_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i___0_carry__3_i_4_n_0\,
      I1 => \i___0_carry__3_i_10_n_0\,
      O => \i___0_carry__3_i_8_n_0\
    );
\i___0_carry__3_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10EF00CFEF100000"
    )
        port map (
      I0 => difficulty(1),
      I1 => difficulty(0),
      I2 => difficulty(3),
      I3 => btn_3,
      I4 => maximum(17),
      I5 => maximum(18),
      O => \i___0_carry__3_i_9_n_0\
    );
\i___0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(21),
      O => \i___0_carry__4_i_1_n_0\
    );
\i___0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(23),
      I1 => maximum(24),
      O => \i___0_carry__4_i_2_n_0\
    );
\i___0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(22),
      I1 => maximum(23),
      O => \i___0_carry__4_i_3_n_0\
    );
\i___0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(21),
      I1 => maximum(22),
      O => \i___0_carry__4_i_4_n_0\
    );
\i___0_carry__4_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF3240CD"
    )
        port map (
      I0 => maximum(19),
      I1 => btn_3,
      I2 => \i___0_carry__1_i_11_n_0\,
      I3 => maximum(20),
      I4 => maximum(21),
      O => \i___0_carry__4_i_5_n_0\
    );
\i___0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(27),
      I1 => maximum(28),
      O => \i___0_carry__5_i_1_n_0\
    );
\i___0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(26),
      I1 => maximum(27),
      O => \i___0_carry__5_i_2_n_0\
    );
\i___0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(25),
      I1 => maximum(26),
      O => \i___0_carry__5_i_3_n_0\
    );
\i___0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(24),
      I1 => maximum(25),
      O => \i___0_carry__5_i_4_n_0\
    );
\i___0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(30),
      I1 => maximum(31),
      O => \i___0_carry__6_i_1_n_0\
    );
\i___0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(29),
      I1 => maximum(30),
      O => \i___0_carry__6_i_2_n_0\
    );
\i___0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => maximum(28),
      I1 => maximum(29),
      O => \i___0_carry__6_i_3_n_0\
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999969"
    )
        port map (
      I0 => maximum(4),
      I1 => btn_3,
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => difficulty(1),
      O => \i___0_carry_i_1_n_0\
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666696666"
    )
        port map (
      I0 => maximum(3),
      I1 => btn_3,
      I2 => difficulty(1),
      I3 => difficulty(0),
      I4 => difficulty(3),
      I5 => difficulty(2),
      O => \i___0_carry_i_2_n_0\
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696666666666666"
    )
        port map (
      I0 => maximum(2),
      I1 => btn_3,
      I2 => difficulty(2),
      I3 => difficulty(0),
      I4 => difficulty(3),
      I5 => difficulty(1),
      O => \i___0_carry_i_3_n_0\
    );
\i___0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966666"
    )
        port map (
      I0 => maximum(1),
      I1 => btn_3,
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => difficulty(2),
      O => \i___0_carry_i_4_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888C8CE88888888"
    )
        port map (
      I0 => maximum(14),
      I1 => maximum(15),
      I2 => difficulty(2),
      I3 => difficulty(1),
      I4 => difficulty(0),
      I5 => difficulty(3),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6FFF4F00000000"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => maximum(12),
      I5 => maximum(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF001000000000"
    )
        port map (
      I0 => difficulty(1),
      I1 => difficulty(0),
      I2 => difficulty(3),
      I3 => difficulty(2),
      I4 => maximum(10),
      I5 => maximum(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888C8EC88888888"
    )
        port map (
      I0 => maximum(8),
      I1 => maximum(9),
      I2 => difficulty(2),
      I3 => difficulty(1),
      I4 => difficulty(0),
      I5 => difficulty(3),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A0FF4F0010"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => maximum(15),
      I5 => maximum(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00900020FF4F0000"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => maximum(12),
      I5 => maximum(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFEF00100000"
    )
        port map (
      I0 => difficulty(1),
      I1 => difficulty(0),
      I2 => difficulty(3),
      I3 => difficulty(2),
      I4 => maximum(10),
      I5 => maximum(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000090FF4F0020"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => maximum(9),
      I5 => maximum(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA20AA"
    )
        port map (
      I0 => maximum(22),
      I1 => difficulty(2),
      I2 => difficulty(1),
      I3 => difficulty(3),
      I4 => difficulty(0),
      I5 => maximum(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00080008000800"
    )
        port map (
      I0 => maximum(21),
      I1 => difficulty(2),
      I2 => difficulty(0),
      I3 => difficulty(3),
      I4 => difficulty(1),
      I5 => maximum(20),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAABAA00000000"
    )
        port map (
      I0 => maximum(18),
      I1 => difficulty(1),
      I2 => difficulty(0),
      I3 => difficulty(3),
      I4 => difficulty(2),
      I5 => maximum(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => maximum(17),
      I1 => difficulty(2),
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => difficulty(1),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B00F4FF"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => difficulty(0),
      I3 => difficulty(3),
      I4 => maximum(22),
      I5 => maximum(23),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FF000004000800"
    )
        port map (
      I0 => difficulty(1),
      I1 => difficulty(3),
      I2 => difficulty(0),
      I3 => difficulty(2),
      I4 => maximum(20),
      I5 => maximum(21),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000004BFFB0000"
    )
        port map (
      I0 => difficulty(0),
      I1 => difficulty(3),
      I2 => difficulty(2),
      I3 => difficulty(1),
      I4 => maximum(19),
      I5 => maximum(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFF000010000000"
    )
        port map (
      I0 => difficulty(1),
      I1 => difficulty(0),
      I2 => difficulty(3),
      I3 => difficulty(2),
      I4 => maximum(16),
      I5 => maximum(17),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(30),
      I1 => maximum(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => maximum(28),
      I1 => maximum(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => maximum(26),
      I1 => maximum(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => maximum(24),
      I1 => maximum(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(30),
      I1 => maximum(31),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(28),
      I1 => maximum(29),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(26),
      I1 => maximum(27),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(24),
      I1 => maximum(25),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C040C000C000000"
    )
        port map (
      I0 => difficulty(1),
      I1 => difficulty(3),
      I2 => difficulty(0),
      I3 => difficulty(2),
      I4 => maximum(6),
      I5 => maximum(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(11),
      I1 => maximum(11),
      I2 => counter_reg(10),
      I3 => maximum(10),
      I4 => maximum(9),
      I5 => counter_reg(9),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(23),
      I1 => maximum(23),
      I2 => counter_reg(22),
      I3 => maximum(22),
      I4 => maximum(21),
      I5 => counter_reg(21),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(31),
      I1 => maximum(31),
      I2 => counter_reg(30),
      I3 => maximum(30),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAA2FA"
    )
        port map (
      I0 => maximum(5),
      I1 => difficulty(2),
      I2 => maximum(4),
      I3 => difficulty(3),
      I4 => difficulty(0),
      I5 => difficulty(1),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(8),
      I1 => maximum(8),
      I2 => counter_reg(7),
      I3 => maximum(7),
      I4 => maximum(6),
      I5 => counter_reg(6),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(20),
      I1 => maximum(20),
      I2 => counter_reg(19),
      I3 => maximum(19),
      I4 => maximum(18),
      I5 => counter_reg(18),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(29),
      I1 => maximum(29),
      I2 => counter_reg(28),
      I3 => maximum(28),
      I4 => maximum(27),
      I5 => counter_reg(27),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AAABAA00000000"
    )
        port map (
      I0 => maximum(2),
      I1 => difficulty(1),
      I2 => difficulty(0),
      I3 => difficulty(3),
      I4 => difficulty(2),
      I5 => maximum(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(5),
      I1 => maximum(5),
      I2 => counter_reg(4),
      I3 => maximum(4),
      I4 => maximum(3),
      I5 => counter_reg(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(17),
      I1 => maximum(17),
      I2 => counter_reg(16),
      I3 => maximum(16),
      I4 => maximum(15),
      I5 => counter_reg(15),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(26),
      I1 => maximum(26),
      I2 => counter_reg(25),
      I3 => maximum(25),
      I4 => maximum(24),
      I5 => counter_reg(24),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20100000"
    )
        port map (
      I0 => difficulty(1),
      I1 => difficulty(0),
      I2 => difficulty(3),
      I3 => difficulty(2),
      I4 => maximum(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(2),
      I2 => maximum(2),
      I3 => maximum(1),
      I4 => counter_reg(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(14),
      I1 => maximum(14),
      I2 => counter_reg(13),
      I3 => maximum(13),
      I4 => maximum(12),
      I5 => counter_reg(12),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4F0010000000A0"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => maximum(6),
      I5 => maximum(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000080004FFF3"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(3),
      I2 => difficulty(0),
      I3 => difficulty(1),
      I4 => maximum(4),
      I5 => maximum(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A00010FF4F0000"
    )
        port map (
      I0 => difficulty(2),
      I1 => difficulty(1),
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => maximum(3),
      I5 => maximum(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2AAA1A"
    )
        port map (
      I0 => maximum(1),
      I1 => difficulty(2),
      I2 => difficulty(3),
      I3 => difficulty(0),
      I4 => difficulty(1),
      O => \i__carry_i_8_n_0\
    );
maximum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => maximum0_carry_n_0,
      CO(2) => maximum0_carry_n_1,
      CO(1) => maximum0_carry_n_2,
      CO(0) => maximum0_carry_n_3,
      CYINIT => '1',
      DI(3) => maximum0_carry_i_1_n_0,
      DI(2) => maximum0_carry_i_2_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_maximum0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => maximum0_carry_i_3_n_0,
      S(2) => maximum0_carry_i_4_n_0,
      S(1) => maximum0_carry_i_5_n_0,
      S(0) => maximum0_carry_i_6_n_0
    );
\maximum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => maximum0_carry_n_0,
      CO(3) => \maximum0_carry__0_n_0\,
      CO(2) => \maximum0_carry__0_n_1\,
      CO(1) => \maximum0_carry__0_n_2\,
      CO(0) => \maximum0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \maximum0_carry__0_i_1_n_0\,
      DI(2) => \maximum0_carry__0_i_2_n_0\,
      DI(1) => \maximum0_carry__0_i_3_n_0\,
      DI(0) => \maximum0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_maximum0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \maximum0_carry__0_i_5_n_0\,
      S(2) => \maximum0_carry__0_i_6_n_0\,
      S(1) => \maximum0_carry__0_i_7_n_0\,
      S(0) => \maximum0_carry__0_i_8_n_0\
    );
\maximum0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => maximum(14),
      I1 => maximum(15),
      O => \maximum0_carry__0_i_1_n_0\
    );
\maximum0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(12),
      I1 => maximum(13),
      O => \maximum0_carry__0_i_2_n_0\
    );
\maximum0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(10),
      I1 => maximum(11),
      O => \maximum0_carry__0_i_3_n_0\
    );
\maximum0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(9),
      O => \maximum0_carry__0_i_4_n_0\
    );
\maximum0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => maximum(15),
      I1 => maximum(14),
      O => \maximum0_carry__0_i_5_n_0\
    );
\maximum0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(12),
      I1 => maximum(13),
      O => \maximum0_carry__0_i_6_n_0\
    );
\maximum0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(10),
      I1 => maximum(11),
      O => \maximum0_carry__0_i_7_n_0\
    );
\maximum0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(9),
      I1 => maximum(8),
      O => \maximum0_carry__0_i_8_n_0\
    );
\maximum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \maximum0_carry__0_n_0\,
      CO(3) => \maximum0_carry__1_n_0\,
      CO(2) => \maximum0_carry__1_n_1\,
      CO(1) => \maximum0_carry__1_n_2\,
      CO(0) => \maximum0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \maximum0_carry__1_i_1_n_0\,
      DI(2) => \maximum0_carry__1_i_2_n_0\,
      DI(1) => \maximum0_carry__1_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_maximum0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \maximum0_carry__1_i_4_n_0\,
      S(2) => \maximum0_carry__1_i_5_n_0\,
      S(1) => \maximum0_carry__1_i_6_n_0\,
      S(0) => \maximum0_carry__1_i_7_n_0\
    );
\maximum0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => maximum(22),
      I1 => maximum(23),
      O => \maximum0_carry__1_i_1_n_0\
    );
\maximum0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(20),
      I1 => maximum(21),
      O => \maximum0_carry__1_i_2_n_0\
    );
\maximum0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => maximum(18),
      I1 => maximum(19),
      O => \maximum0_carry__1_i_3_n_0\
    );
\maximum0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => maximum(22),
      I1 => maximum(23),
      O => \maximum0_carry__1_i_4_n_0\
    );
\maximum0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(20),
      I1 => maximum(21),
      O => \maximum0_carry__1_i_5_n_0\
    );
\maximum0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => maximum(19),
      I1 => maximum(18),
      O => \maximum0_carry__1_i_6_n_0\
    );
\maximum0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(16),
      I1 => maximum(17),
      O => \maximum0_carry__1_i_7_n_0\
    );
\maximum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \maximum0_carry__1_n_0\,
      CO(3) => \maximum0_carry__2_n_0\,
      CO(2) => \maximum0_carry__2_n_1\,
      CO(1) => \maximum0_carry__2_n_2\,
      CO(0) => \maximum0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => maximum(31),
      DI(2 downto 1) => B"00",
      DI(0) => \maximum0_carry__2_i_1_n_0\,
      O(3 downto 0) => \NLW_maximum0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \maximum0_carry__2_i_2_n_0\,
      S(2) => \maximum0_carry__2_i_3_n_0\,
      S(1) => \maximum0_carry__2_i_4_n_0\,
      S(0) => \maximum0_carry__2_i_5_n_0\
    );
\maximum0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(24),
      I1 => maximum(25),
      O => \maximum0_carry__2_i_1_n_0\
    );
\maximum0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(30),
      I1 => maximum(31),
      O => \maximum0_carry__2_i_2_n_0\
    );
\maximum0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(28),
      I1 => maximum(29),
      O => \maximum0_carry__2_i_3_n_0\
    );
\maximum0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(26),
      I1 => maximum(27),
      O => \maximum0_carry__2_i_4_n_0\
    );
\maximum0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(24),
      I1 => maximum(25),
      O => \maximum0_carry__2_i_5_n_0\
    );
maximum0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(7),
      I1 => maximum(6),
      O => maximum0_carry_i_1_n_0
    );
maximum0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(4),
      I1 => maximum(5),
      O => maximum0_carry_i_2_n_0
    );
maximum0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(6),
      I1 => maximum(7),
      O => maximum0_carry_i_3_n_0
    );
maximum0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => maximum(4),
      I1 => maximum(5),
      O => maximum0_carry_i_4_n_0
    );
maximum0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(2),
      I1 => maximum(3),
      O => maximum0_carry_i_5_n_0
    );
maximum0_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => maximum(1),
      O => maximum0_carry_i_6_n_0
    );
\maximum0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \maximum0_inferred__0/i__carry_n_0\,
      CO(2) => \maximum0_inferred__0/i__carry_n_1\,
      CO(1) => \maximum0_inferred__0/i__carry_n_2\,
      CO(0) => \maximum0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_maximum0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\maximum0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \maximum0_inferred__0/i__carry_n_0\,
      CO(3) => \maximum0_inferred__0/i__carry__0_n_0\,
      CO(2) => \maximum0_inferred__0/i__carry__0_n_1\,
      CO(1) => \maximum0_inferred__0/i__carry__0_n_2\,
      CO(0) => \maximum0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_maximum0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\maximum0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \maximum0_inferred__0/i__carry__0_n_0\,
      CO(3) => \maximum0_inferred__0/i__carry__1_n_0\,
      CO(2) => \maximum0_inferred__0/i__carry__1_n_1\,
      CO(1) => \maximum0_inferred__0/i__carry__1_n_2\,
      CO(0) => \maximum0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_maximum0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\maximum0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \maximum0_inferred__0/i__carry__1_n_0\,
      CO(3) => \maximum0_inferred__0/i__carry__2_n_0\,
      CO(2) => \maximum0_inferred__0/i__carry__2_n_1\,
      CO(1) => \maximum0_inferred__0/i__carry__2_n_2\,
      CO(0) => \maximum0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_maximum0_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\maximum[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0000000"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => up_r,
      I2 => \maximum0_inferred__0/i__carry__2_n_0\,
      I3 => counter12_in,
      I4 => btn_3,
      I5 => \maximum[31]_i_2_n_0\,
      O => \maximum[31]_i_1_n_0\
    );
\maximum[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \maximum0_carry__2_n_0\,
      I1 => running_reg_n_0,
      I2 => \counter1__15\,
      I3 => btn_3,
      I4 => counter12_in,
      O => \maximum[31]_i_2_n_0\
    );
\maximum_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(10),
      Q => maximum(10),
      S => clear
    );
\maximum_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(11),
      Q => maximum(11),
      R => clear
    );
\maximum_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(12),
      Q => maximum(12),
      S => clear
    );
\maximum_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(13),
      Q => maximum(13),
      R => clear
    );
\maximum_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(14),
      Q => maximum(14),
      S => clear
    );
\maximum_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(15),
      Q => maximum(15),
      S => clear
    );
\maximum_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(16),
      Q => maximum(16),
      R => clear
    );
\maximum_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(17),
      Q => maximum(17),
      R => clear
    );
\maximum_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(18),
      Q => maximum(18),
      S => clear
    );
\maximum_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(19),
      Q => maximum(19),
      S => clear
    );
\maximum_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(1),
      Q => maximum(1),
      R => clear
    );
\maximum_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(20),
      Q => maximum(20),
      S => clear
    );
\maximum_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(21),
      Q => maximum(21),
      R => clear
    );
\maximum_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(22),
      Q => maximum(22),
      S => clear
    );
\maximum_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(23),
      Q => maximum(23),
      S => clear
    );
\maximum_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(24),
      Q => maximum(24),
      S => clear
    );
\maximum_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(25),
      Q => maximum(25),
      R => clear
    );
\maximum_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(26),
      Q => maximum(26),
      R => clear
    );
\maximum_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(27),
      Q => maximum(27),
      R => clear
    );
\maximum_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(28),
      Q => maximum(28),
      R => clear
    );
\maximum_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(29),
      Q => maximum(29),
      R => clear
    );
\maximum_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(2),
      Q => maximum(2),
      R => clear
    );
\maximum_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(30),
      Q => maximum(30),
      R => clear
    );
\maximum_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(31),
      Q => maximum(31),
      R => clear
    );
\maximum_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(3),
      Q => maximum(3),
      R => clear
    );
\maximum_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(4),
      Q => maximum(4),
      S => clear
    );
\maximum_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(5),
      Q => maximum(5),
      R => clear
    );
\maximum_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(6),
      Q => maximum(6),
      S => clear
    );
\maximum_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(7),
      Q => maximum(7),
      R => clear
    );
\maximum_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(8),
      Q => maximum(8),
      R => clear
    );
\maximum_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \maximum[31]_i_1_n_0\,
      D => maximum1_in(9),
      Q => maximum(9),
      S => clear
    );
running_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => up_r,
      I1 => btn_3,
      I2 => running_reg_n_0,
      O => running
    );
running_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => running,
      Q => running_reg_n_0,
      R => clear
    );
special_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFF5D5FA200A2A0"
    )
        port map (
      I0 => counter12_in,
      I1 => \counter1__15\,
      I2 => btn_3,
      I3 => running_reg_n_0,
      I4 => up_r,
      I5 => special_clk,
      O => special_clk_i_1_n_0
    );
special_clk_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
special_clk_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => special_clk,
      Q => special_clk_out,
      R => clear
    );
special_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => special_clk_i_1_n_0,
      Q => special_clk,
      R => clear
    );
stop_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \counter1__15\,
      I1 => running_reg_n_0,
      I2 => btn_3,
      I3 => \^stop\,
      O => stop_i_1_n_0
    );
stop_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stop_i_1_n_0,
      Q => \^stop\,
      R => clear
    );
up_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => btn_3,
      Q => up_r,
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    btn_3 : in STD_LOGIC;
    special_clk_out : out STD_LOGIC;
    stop : out STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_clk_manager_0_0,clk_manager,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "clk_manager,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_manager
     port map (
      btn_3 => btn_3,
      clk => clk,
      difficulty(3 downto 0) => difficulty(3 downto 0),
      special_clk_out => special_clk_out,
      state(1 downto 0) => state(1 downto 0),
      stop => stop
    );
end STRUCTURE;
