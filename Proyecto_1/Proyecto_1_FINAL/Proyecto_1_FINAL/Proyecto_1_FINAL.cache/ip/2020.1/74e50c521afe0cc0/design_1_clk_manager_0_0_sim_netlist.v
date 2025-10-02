// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Oct  2 13:25:37 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_clk_manager_0_0_sim_netlist.v
// Design      : design_1_clk_manager_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_manager
   (special_clk_out,
    stop,
    btn_3,
    difficulty,
    clk,
    state);
  output special_clk_out;
  output stop;
  input btn_3;
  input [3:0]difficulty;
  input clk;
  input [1:0]state;

  wire \_inferred__1/i___0_carry__0_n_0 ;
  wire \_inferred__1/i___0_carry__0_n_1 ;
  wire \_inferred__1/i___0_carry__0_n_2 ;
  wire \_inferred__1/i___0_carry__0_n_3 ;
  wire \_inferred__1/i___0_carry__1_n_0 ;
  wire \_inferred__1/i___0_carry__1_n_1 ;
  wire \_inferred__1/i___0_carry__1_n_2 ;
  wire \_inferred__1/i___0_carry__1_n_3 ;
  wire \_inferred__1/i___0_carry__2_n_0 ;
  wire \_inferred__1/i___0_carry__2_n_1 ;
  wire \_inferred__1/i___0_carry__2_n_2 ;
  wire \_inferred__1/i___0_carry__2_n_3 ;
  wire \_inferred__1/i___0_carry__3_n_0 ;
  wire \_inferred__1/i___0_carry__3_n_1 ;
  wire \_inferred__1/i___0_carry__3_n_2 ;
  wire \_inferred__1/i___0_carry__3_n_3 ;
  wire \_inferred__1/i___0_carry__4_n_0 ;
  wire \_inferred__1/i___0_carry__4_n_1 ;
  wire \_inferred__1/i___0_carry__4_n_2 ;
  wire \_inferred__1/i___0_carry__4_n_3 ;
  wire \_inferred__1/i___0_carry__5_n_0 ;
  wire \_inferred__1/i___0_carry__5_n_1 ;
  wire \_inferred__1/i___0_carry__5_n_2 ;
  wire \_inferred__1/i___0_carry__5_n_3 ;
  wire \_inferred__1/i___0_carry__6_n_2 ;
  wire \_inferred__1/i___0_carry__6_n_3 ;
  wire \_inferred__1/i___0_carry_n_0 ;
  wire \_inferred__1/i___0_carry_n_1 ;
  wire \_inferred__1/i___0_carry_n_2 ;
  wire \_inferred__1/i___0_carry_n_3 ;
  wire btn_3;
  wire clear;
  wire clk;
  wire counter;
  wire counter12_in;
  wire counter1__15;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_i_5_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_i_4_n_0;
  wire counter1_carry__1_i_5_n_0;
  wire counter1_carry__1_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry__1_n_2;
  wire counter1_carry__1_n_3;
  wire counter1_carry__2_i_1_n_0;
  wire counter1_carry__2_i_2_n_0;
  wire counter1_carry__2_i_3_n_0;
  wire counter1_carry__2_i_4_n_0;
  wire counter1_carry__2_i_5_n_0;
  wire counter1_carry__2_i_6_n_0;
  wire counter1_carry__2_i_7_n_0;
  wire counter1_carry__2_n_1;
  wire counter1_carry__2_n_2;
  wire counter1_carry__2_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_i_5_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter1_inferred__0/i__carry__0_n_0 ;
  wire \counter1_inferred__0/i__carry__0_n_1 ;
  wire \counter1_inferred__0/i__carry__0_n_2 ;
  wire \counter1_inferred__0/i__carry__0_n_3 ;
  wire \counter1_inferred__0/i__carry__1_n_2 ;
  wire \counter1_inferred__0/i__carry__1_n_3 ;
  wire \counter1_inferred__0/i__carry_n_0 ;
  wire \counter1_inferred__0/i__carry_n_1 ;
  wire \counter1_inferred__0/i__carry_n_2 ;
  wire \counter1_inferred__0/i__carry_n_3 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[28]_i_2_n_0 ;
  wire \counter[28]_i_3_n_0 ;
  wire \counter[28]_i_4_n_0 ;
  wire \counter[28]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [3:0]difficulty;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry__0_i_4_n_0;
  wire i___0_carry__0_i_5_n_0;
  wire i___0_carry__1_i_10_n_0;
  wire i___0_carry__1_i_11_n_0;
  wire i___0_carry__1_i_12_n_0;
  wire i___0_carry__1_i_13_n_0;
  wire i___0_carry__1_i_1_n_0;
  wire i___0_carry__1_i_2_n_0;
  wire i___0_carry__1_i_3_n_0;
  wire i___0_carry__1_i_4_n_0;
  wire i___0_carry__1_i_5_n_0;
  wire i___0_carry__1_i_6_n_0;
  wire i___0_carry__1_i_7_n_0;
  wire i___0_carry__1_i_8_n_0;
  wire i___0_carry__1_i_9_n_0;
  wire i___0_carry__2_i_10_n_0;
  wire i___0_carry__2_i_11_n_0;
  wire i___0_carry__2_i_12_n_0;
  wire i___0_carry__2_i_1_n_0;
  wire i___0_carry__2_i_2_n_0;
  wire i___0_carry__2_i_3_n_0;
  wire i___0_carry__2_i_4_n_0;
  wire i___0_carry__2_i_5_n_0;
  wire i___0_carry__2_i_6_n_0;
  wire i___0_carry__2_i_7_n_0;
  wire i___0_carry__2_i_8_n_0;
  wire i___0_carry__2_i_9_n_0;
  wire i___0_carry__3_i_10_n_0;
  wire i___0_carry__3_i_1_n_0;
  wire i___0_carry__3_i_2_n_0;
  wire i___0_carry__3_i_3_n_0;
  wire i___0_carry__3_i_4_n_0;
  wire i___0_carry__3_i_5_n_0;
  wire i___0_carry__3_i_6_n_0;
  wire i___0_carry__3_i_7_n_0;
  wire i___0_carry__3_i_8_n_0;
  wire i___0_carry__3_i_9_n_0;
  wire i___0_carry__4_i_1_n_0;
  wire i___0_carry__4_i_2_n_0;
  wire i___0_carry__4_i_3_n_0;
  wire i___0_carry__4_i_4_n_0;
  wire i___0_carry__4_i_5_n_0;
  wire i___0_carry__5_i_1_n_0;
  wire i___0_carry__5_i_2_n_0;
  wire i___0_carry__5_i_3_n_0;
  wire i___0_carry__5_i_4_n_0;
  wire i___0_carry__6_i_1_n_0;
  wire i___0_carry__6_i_2_n_0;
  wire i___0_carry__6_i_3_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3_n_0;
  wire i___0_carry_i_4_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [31:1]maximum;
  wire maximum0_carry__0_i_1_n_0;
  wire maximum0_carry__0_i_2_n_0;
  wire maximum0_carry__0_i_3_n_0;
  wire maximum0_carry__0_i_4_n_0;
  wire maximum0_carry__0_i_5_n_0;
  wire maximum0_carry__0_i_6_n_0;
  wire maximum0_carry__0_i_7_n_0;
  wire maximum0_carry__0_i_8_n_0;
  wire maximum0_carry__0_n_0;
  wire maximum0_carry__0_n_1;
  wire maximum0_carry__0_n_2;
  wire maximum0_carry__0_n_3;
  wire maximum0_carry__1_i_1_n_0;
  wire maximum0_carry__1_i_2_n_0;
  wire maximum0_carry__1_i_3_n_0;
  wire maximum0_carry__1_i_4_n_0;
  wire maximum0_carry__1_i_5_n_0;
  wire maximum0_carry__1_i_6_n_0;
  wire maximum0_carry__1_i_7_n_0;
  wire maximum0_carry__1_n_0;
  wire maximum0_carry__1_n_1;
  wire maximum0_carry__1_n_2;
  wire maximum0_carry__1_n_3;
  wire maximum0_carry__2_i_1_n_0;
  wire maximum0_carry__2_i_2_n_0;
  wire maximum0_carry__2_i_3_n_0;
  wire maximum0_carry__2_i_4_n_0;
  wire maximum0_carry__2_i_5_n_0;
  wire maximum0_carry__2_n_0;
  wire maximum0_carry__2_n_1;
  wire maximum0_carry__2_n_2;
  wire maximum0_carry__2_n_3;
  wire maximum0_carry_i_1_n_0;
  wire maximum0_carry_i_2_n_0;
  wire maximum0_carry_i_3_n_0;
  wire maximum0_carry_i_4_n_0;
  wire maximum0_carry_i_5_n_0;
  wire maximum0_carry_i_6_n_0;
  wire maximum0_carry_n_0;
  wire maximum0_carry_n_1;
  wire maximum0_carry_n_2;
  wire maximum0_carry_n_3;
  wire \maximum0_inferred__0/i__carry__0_n_0 ;
  wire \maximum0_inferred__0/i__carry__0_n_1 ;
  wire \maximum0_inferred__0/i__carry__0_n_2 ;
  wire \maximum0_inferred__0/i__carry__0_n_3 ;
  wire \maximum0_inferred__0/i__carry__1_n_0 ;
  wire \maximum0_inferred__0/i__carry__1_n_1 ;
  wire \maximum0_inferred__0/i__carry__1_n_2 ;
  wire \maximum0_inferred__0/i__carry__1_n_3 ;
  wire \maximum0_inferred__0/i__carry__2_n_0 ;
  wire \maximum0_inferred__0/i__carry__2_n_1 ;
  wire \maximum0_inferred__0/i__carry__2_n_2 ;
  wire \maximum0_inferred__0/i__carry__2_n_3 ;
  wire \maximum0_inferred__0/i__carry_n_0 ;
  wire \maximum0_inferred__0/i__carry_n_1 ;
  wire \maximum0_inferred__0/i__carry_n_2 ;
  wire \maximum0_inferred__0/i__carry_n_3 ;
  wire [31:1]maximum1_in;
  wire \maximum[31]_i_1_n_0 ;
  wire \maximum[31]_i_2_n_0 ;
  wire running;
  wire running_reg_n_0;
  wire special_clk;
  wire special_clk_i_1_n_0;
  wire special_clk_out;
  wire [1:0]state;
  wire stop;
  wire stop_i_1_n_0;
  wire up_r;
  wire [3:2]\NLW__inferred__1/i___0_carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__1/i___0_carry__6_O_UNCONNECTED ;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_counter1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_counter1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_counter1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_maximum0_carry_O_UNCONNECTED;
  wire [3:0]NLW_maximum0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_maximum0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_maximum0_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_maximum0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_maximum0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_maximum0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_maximum0_inferred__0/i__carry__2_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i___0_carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i___0_carry_n_0 ,\_inferred__1/i___0_carry_n_1 ,\_inferred__1/i___0_carry_n_2 ,\_inferred__1/i___0_carry_n_3 }),
        .CYINIT(btn_3),
        .DI(maximum[4:1]),
        .O(maximum1_in[4:1]),
        .S({i___0_carry_i_1_n_0,i___0_carry_i_2_n_0,i___0_carry_i_3_n_0,i___0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i___0_carry__0 
       (.CI(\_inferred__1/i___0_carry_n_0 ),
        .CO({\_inferred__1/i___0_carry__0_n_0 ,\_inferred__1/i___0_carry__0_n_1 ,\_inferred__1/i___0_carry__0_n_2 ,\_inferred__1/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({maximum[7],btn_3,i___0_carry__0_i_1_n_0,maximum[5]}),
        .O(maximum1_in[8:5]),
        .S({i___0_carry__0_i_2_n_0,i___0_carry__0_i_3_n_0,i___0_carry__0_i_4_n_0,i___0_carry__0_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i___0_carry__1 
       (.CI(\_inferred__1/i___0_carry__0_n_0 ),
        .CO({\_inferred__1/i___0_carry__1_n_0 ,\_inferred__1/i___0_carry__1_n_1 ,\_inferred__1/i___0_carry__1_n_2 ,\_inferred__1/i___0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry__1_i_1_n_0,i___0_carry__1_i_2_n_0,i___0_carry__1_i_3_n_0,i___0_carry__1_i_4_n_0}),
        .O(maximum1_in[12:9]),
        .S({i___0_carry__1_i_5_n_0,i___0_carry__1_i_6_n_0,i___0_carry__1_i_7_n_0,i___0_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i___0_carry__2 
       (.CI(\_inferred__1/i___0_carry__1_n_0 ),
        .CO({\_inferred__1/i___0_carry__2_n_0 ,\_inferred__1/i___0_carry__2_n_1 ,\_inferred__1/i___0_carry__2_n_2 ,\_inferred__1/i___0_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry__2_i_1_n_0,i___0_carry__2_i_2_n_0,i___0_carry__2_i_3_n_0,i___0_carry__2_i_4_n_0}),
        .O(maximum1_in[16:13]),
        .S({i___0_carry__2_i_5_n_0,i___0_carry__2_i_6_n_0,i___0_carry__2_i_7_n_0,i___0_carry__2_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i___0_carry__3 
       (.CI(\_inferred__1/i___0_carry__2_n_0 ),
        .CO({\_inferred__1/i___0_carry__3_n_0 ,\_inferred__1/i___0_carry__3_n_1 ,\_inferred__1/i___0_carry__3_n_2 ,\_inferred__1/i___0_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry__3_i_1_n_0,i___0_carry__3_i_2_n_0,i___0_carry__3_i_3_n_0,i___0_carry__3_i_4_n_0}),
        .O(maximum1_in[20:17]),
        .S({i___0_carry__3_i_5_n_0,i___0_carry__3_i_6_n_0,i___0_carry__3_i_7_n_0,i___0_carry__3_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i___0_carry__4 
       (.CI(\_inferred__1/i___0_carry__3_n_0 ),
        .CO({\_inferred__1/i___0_carry__4_n_0 ,\_inferred__1/i___0_carry__4_n_1 ,\_inferred__1/i___0_carry__4_n_2 ,\_inferred__1/i___0_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({maximum[23:21],i___0_carry__4_i_1_n_0}),
        .O(maximum1_in[24:21]),
        .S({i___0_carry__4_i_2_n_0,i___0_carry__4_i_3_n_0,i___0_carry__4_i_4_n_0,i___0_carry__4_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i___0_carry__5 
       (.CI(\_inferred__1/i___0_carry__4_n_0 ),
        .CO({\_inferred__1/i___0_carry__5_n_0 ,\_inferred__1/i___0_carry__5_n_1 ,\_inferred__1/i___0_carry__5_n_2 ,\_inferred__1/i___0_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(maximum[27:24]),
        .O(maximum1_in[28:25]),
        .S({i___0_carry__5_i_1_n_0,i___0_carry__5_i_2_n_0,i___0_carry__5_i_3_n_0,i___0_carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i___0_carry__6 
       (.CI(\_inferred__1/i___0_carry__5_n_0 ),
        .CO({\NLW__inferred__1/i___0_carry__6_CO_UNCONNECTED [3:2],\_inferred__1/i___0_carry__6_n_2 ,\_inferred__1/i___0_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,maximum[29:28]}),
        .O({\NLW__inferred__1/i___0_carry__6_O_UNCONNECTED [3],maximum1_in[31:29]}),
        .S({1'b0,i___0_carry__6_i_1_n_0,i___0_carry__6_i_2_n_0,i___0_carry__6_i_3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({maximum[7],maximum[5],counter1_carry_i_1_n_0,maximum[1]}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0,counter1_carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,maximum[13],maximum[11],counter1_carry__0_i_1_n_0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0,counter1_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    counter1_carry__0_i_1
       (.I0(maximum[8]),
        .I1(maximum[9]),
        .O(counter1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter1_carry__0_i_2
       (.I0(maximum[15]),
        .I1(maximum[14]),
        .O(counter1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry__0_i_3
       (.I0(maximum[12]),
        .I1(maximum[13]),
        .O(counter1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry__0_i_4
       (.I0(maximum[10]),
        .I1(maximum[11]),
        .O(counter1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry__0_i_5
       (.I0(maximum[9]),
        .I1(maximum[8]),
        .O(counter1_carry__0_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({counter1_carry__1_n_0,counter1_carry__1_n_1,counter1_carry__1_n_2,counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,maximum[21],1'b0,counter1_carry__1_i_1_n_0}),
        .O(NLW_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({counter1_carry__1_i_2_n_0,counter1_carry__1_i_3_n_0,counter1_carry__1_i_4_n_0,counter1_carry__1_i_5_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__1_i_1
       (.I0(maximum[16]),
        .I1(maximum[17]),
        .O(counter1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter1_carry__1_i_2
       (.I0(maximum[22]),
        .I1(maximum[23]),
        .O(counter1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry__1_i_3
       (.I0(maximum[20]),
        .I1(maximum[21]),
        .O(counter1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter1_carry__1_i_4
       (.I0(maximum[19]),
        .I1(maximum[18]),
        .O(counter1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__1_i_5
       (.I0(maximum[16]),
        .I1(maximum[17]),
        .O(counter1_carry__1_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 counter1_carry__2
       (.CI(counter1_carry__1_n_0),
        .CO({counter1__15,counter1_carry__2_n_1,counter1_carry__2_n_2,counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({counter1_carry__2_i_1_n_0,counter1_carry__2_i_2_n_0,counter1_carry__2_i_3_n_0,maximum[25]}),
        .O(NLW_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({counter1_carry__2_i_4_n_0,counter1_carry__2_i_5_n_0,counter1_carry__2_i_6_n_0,counter1_carry__2_i_7_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry__2_i_1
       (.I0(maximum[30]),
        .I1(maximum[31]),
        .O(counter1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__2_i_2
       (.I0(maximum[28]),
        .I1(maximum[29]),
        .O(counter1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry__2_i_3
       (.I0(maximum[26]),
        .I1(maximum[27]),
        .O(counter1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__2_i_4
       (.I0(maximum[30]),
        .I1(maximum[31]),
        .O(counter1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__2_i_5
       (.I0(maximum[28]),
        .I1(maximum[29]),
        .O(counter1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__2_i_6
       (.I0(maximum[26]),
        .I1(maximum[27]),
        .O(counter1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry__2_i_7
       (.I0(maximum[24]),
        .I1(maximum[25]),
        .O(counter1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter1_carry_i_1
       (.I0(maximum[2]),
        .I1(maximum[3]),
        .O(counter1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry_i_2
       (.I0(maximum[6]),
        .I1(maximum[7]),
        .O(counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter1_carry_i_3
       (.I0(maximum[4]),
        .I1(maximum[5]),
        .O(counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry_i_4
       (.I0(maximum[2]),
        .I1(maximum[3]),
        .O(counter1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_5
       (.I0(maximum[1]),
        .O(counter1_carry_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\counter1_inferred__0/i__carry_n_0 ,\counter1_inferred__0/i__carry_n_1 ,\counter1_inferred__0/i__carry_n_2 ,\counter1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter1_inferred__0/i__carry__0 
       (.CI(\counter1_inferred__0/i__carry_n_0 ),
        .CO({\counter1_inferred__0/i__carry__0_n_0 ,\counter1_inferred__0/i__carry__0_n_1 ,\counter1_inferred__0/i__carry__0_n_2 ,\counter1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter1_inferred__0/i__carry__1 
       (.CI(\counter1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_counter1_inferred__0/i__carry__1_CO_UNCONNECTED [3],counter12_in,\counter1_inferred__0/i__carry__1_n_2 ,\counter1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0}));
  LUT4 #(
    .INIT(16'hD0DC)) 
    \counter[0]_i_1 
       (.I0(counter1__15),
        .I1(btn_3),
        .I2(running_reg_n_0),
        .I3(up_r),
        .O(counter));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter12_in),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[3]),
        .I1(counter12_in),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[2]),
        .I1(counter12_in),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_6 
       (.I0(counter_reg[1]),
        .I1(counter12_in),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .I1(counter12_in),
        .O(\counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(counter12_in),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(counter12_in),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(counter12_in),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(counter12_in),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(counter12_in),
        .O(\counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(counter12_in),
        .O(\counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(counter12_in),
        .O(\counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(counter12_in),
        .O(\counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(counter12_in),
        .O(\counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(counter12_in),
        .O(\counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(counter12_in),
        .O(\counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(counter12_in),
        .O(\counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_2 
       (.I0(counter_reg[27]),
        .I1(counter12_in),
        .O(\counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_3 
       (.I0(counter_reg[26]),
        .I1(counter12_in),
        .O(\counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_4 
       (.I0(counter_reg[25]),
        .I1(counter12_in),
        .O(\counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_5 
       (.I0(counter_reg[24]),
        .I1(counter12_in),
        .O(\counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_2 
       (.I0(counter_reg[31]),
        .I1(counter12_in),
        .O(\counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_3 
       (.I0(counter_reg[30]),
        .I1(counter12_in),
        .O(\counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_4 
       (.I0(counter_reg[29]),
        .I1(counter12_in),
        .O(\counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_5 
       (.I0(counter_reg[28]),
        .I1(counter12_in),
        .O(\counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(counter12_in),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(counter12_in),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(counter12_in),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(counter12_in),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(counter12_in),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(counter12_in),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(counter12_in),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(counter12_in),
        .O(\counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_3_n_0 }),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 ,\counter[24]_i_4_n_0 ,\counter[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S({\counter[28]_i_2_n_0 ,\counter[28]_i_3_n_0 ,\counter[28]_i_4_n_0 ,\counter[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(counter),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__0_i_1
       (.I0(btn_3),
        .O(i___0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_2
       (.I0(maximum[7]),
        .I1(maximum[8]),
        .O(i___0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_3
       (.I0(btn_3),
        .I1(maximum[7]),
        .O(i___0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__0_i_4
       (.I0(btn_3),
        .I1(maximum[6]),
        .O(i___0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h66666696)) 
    i___0_carry__0_i_5
       (.I0(maximum[5]),
        .I1(btn_3),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(difficulty[1]),
        .O(i___0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h22CC328C22CC28C3)) 
    i___0_carry__1_i_1
       (.I0(maximum[10]),
        .I1(maximum[11]),
        .I2(difficulty[1]),
        .I3(btn_3),
        .I4(i___0_carry__1_i_9_n_0),
        .I5(difficulty[2]),
        .O(i___0_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    i___0_carry__1_i_10
       (.I0(difficulty[3]),
        .I1(difficulty[0]),
        .I2(difficulty[2]),
        .O(i___0_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    i___0_carry__1_i_11
       (.I0(difficulty[3]),
        .I1(difficulty[0]),
        .I2(difficulty[1]),
        .O(i___0_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    i___0_carry__1_i_12
       (.I0(difficulty[2]),
        .I1(difficulty[0]),
        .I2(difficulty[3]),
        .I3(difficulty[1]),
        .O(i___0_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h9595A6959595956A)) 
    i___0_carry__1_i_13
       (.I0(maximum[11]),
        .I1(maximum[10]),
        .I2(btn_3),
        .I3(difficulty[1]),
        .I4(i___0_carry__1_i_9_n_0),
        .I5(difficulty[2]),
        .O(i___0_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h0080880888080080)) 
    i___0_carry__1_i_2
       (.I0(maximum[9]),
        .I1(maximum[8]),
        .I2(difficulty[1]),
        .I3(i___0_carry__1_i_10_n_0),
        .I4(btn_3),
        .I5(maximum[10]),
        .O(i___0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h8878778777878878)) 
    i___0_carry__1_i_3
       (.I0(maximum[9]),
        .I1(maximum[8]),
        .I2(difficulty[1]),
        .I3(i___0_carry__1_i_10_n_0),
        .I4(btn_3),
        .I5(maximum[10]),
        .O(i___0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    i___0_carry__1_i_4
       (.I0(difficulty[3]),
        .I1(difficulty[0]),
        .I2(difficulty[2]),
        .O(i___0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9666699996666696)) 
    i___0_carry__1_i_5
       (.I0(i___0_carry__1_i_1_n_0),
        .I1(maximum[12]),
        .I2(maximum[11]),
        .I3(btn_3),
        .I4(i___0_carry__1_i_11_n_0),
        .I5(difficulty[2]),
        .O(i___0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h96FFFFFF69000000)) 
    i___0_carry__1_i_6
       (.I0(maximum[10]),
        .I1(btn_3),
        .I2(i___0_carry__1_i_12_n_0),
        .I3(maximum[8]),
        .I4(maximum[9]),
        .I5(i___0_carry__1_i_13_n_0),
        .O(i___0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hA555A55596666999)) 
    i___0_carry__1_i_7
       (.I0(maximum[10]),
        .I1(difficulty[1]),
        .I2(maximum[8]),
        .I3(maximum[9]),
        .I4(btn_3),
        .I5(i___0_carry__1_i_10_n_0),
        .O(i___0_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    i___0_carry__1_i_8
       (.I0(difficulty[2]),
        .I1(difficulty[0]),
        .I2(difficulty[3]),
        .I3(maximum[9]),
        .I4(maximum[8]),
        .O(i___0_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    i___0_carry__1_i_9
       (.I0(difficulty[0]),
        .I1(difficulty[3]),
        .O(i___0_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h9898989862986264)) 
    i___0_carry__2_i_1
       (.I0(maximum[15]),
        .I1(btn_3),
        .I2(maximum[14]),
        .I3(difficulty[2]),
        .I4(difficulty[1]),
        .I5(i___0_carry__1_i_9_n_0),
        .O(i___0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h33C60005CC39FFFA)) 
    i___0_carry__2_i_10
       (.I0(difficulty[1]),
        .I1(btn_3),
        .I2(difficulty[2]),
        .I3(i___0_carry__1_i_9_n_0),
        .I4(maximum[14]),
        .I5(maximum[15]),
        .O(i___0_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'h3CF03CF0E12D2DE1)) 
    i___0_carry__2_i_11
       (.I0(difficulty[1]),
        .I1(maximum[13]),
        .I2(maximum[14]),
        .I3(btn_3),
        .I4(difficulty[2]),
        .I5(i___0_carry__1_i_9_n_0),
        .O(i___0_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'hA6A9F3F359560C0C)) 
    i___0_carry__2_i_12
       (.I0(btn_3),
        .I1(difficulty[2]),
        .I2(i___0_carry__1_i_9_n_0),
        .I3(difficulty[1]),
        .I4(maximum[12]),
        .I5(maximum[13]),
        .O(i___0_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'hA0AB0B000E00F0FE)) 
    i___0_carry__2_i_2
       (.I0(maximum[13]),
        .I1(difficulty[1]),
        .I2(i___0_carry__1_i_9_n_0),
        .I3(difficulty[2]),
        .I4(btn_3),
        .I5(maximum[14]),
        .O(i___0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h6464986464646291)) 
    i___0_carry__2_i_3
       (.I0(maximum[13]),
        .I1(btn_3),
        .I2(maximum[12]),
        .I3(difficulty[2]),
        .I4(i___0_carry__1_i_9_n_0),
        .I5(difficulty[1]),
        .O(i___0_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h832C8338)) 
    i___0_carry__2_i_4
       (.I0(maximum[11]),
        .I1(maximum[12]),
        .I2(btn_3),
        .I3(i___0_carry__1_i_11_n_0),
        .I4(difficulty[2]),
        .O(i___0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry__2_i_5
       (.I0(i___0_carry__2_i_1_n_0),
        .I1(i___0_carry__2_i_9_n_0),
        .O(i___0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry__2_i_6
       (.I0(i___0_carry__2_i_2_n_0),
        .I1(i___0_carry__2_i_10_n_0),
        .O(i___0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry__2_i_7
       (.I0(i___0_carry__2_i_3_n_0),
        .I1(i___0_carry__2_i_11_n_0),
        .O(i___0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h3CC3FDE3C33C021C)) 
    i___0_carry__2_i_8
       (.I0(difficulty[2]),
        .I1(i___0_carry__1_i_11_n_0),
        .I2(btn_3),
        .I3(maximum[12]),
        .I4(maximum[11]),
        .I5(i___0_carry__2_i_12_n_0),
        .O(i___0_carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'hFF000FF0D62926D9)) 
    i___0_carry__2_i_9
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(maximum[15]),
        .I3(maximum[16]),
        .I4(btn_3),
        .I5(i___0_carry__1_i_9_n_0),
        .O(i___0_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h3338333388838888)) 
    i___0_carry__3_i_1
       (.I0(maximum[18]),
        .I1(maximum[19]),
        .I2(difficulty[1]),
        .I3(difficulty[0]),
        .I4(difficulty[3]),
        .I5(btn_3),
        .O(i___0_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'hA7A90D035856F2FC)) 
    i___0_carry__3_i_10
       (.I0(maximum[16]),
        .I1(difficulty[1]),
        .I2(i___0_carry__1_i_9_n_0),
        .I3(difficulty[2]),
        .I4(btn_3),
        .I5(maximum[17]),
        .O(i___0_carry__3_i_10_n_0));
  LUT6 #(
    .INIT(64'hEE1111EE401001AE)) 
    i___0_carry__3_i_2
       (.I0(i___0_carry__1_i_9_n_0),
        .I1(difficulty[1]),
        .I2(difficulty[2]),
        .I3(btn_3),
        .I4(maximum[18]),
        .I5(maximum[17]),
        .O(i___0_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h4A4A854A4A4A5885)) 
    i___0_carry__3_i_3
       (.I0(maximum[17]),
        .I1(maximum[16]),
        .I2(btn_3),
        .I3(difficulty[2]),
        .I4(i___0_carry__1_i_9_n_0),
        .I5(difficulty[1]),
        .O(i___0_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h6666669622422214)) 
    i___0_carry__3_i_4
       (.I0(btn_3),
        .I1(maximum[16]),
        .I2(difficulty[2]),
        .I3(i___0_carry__1_i_9_n_0),
        .I4(difficulty[1]),
        .I5(maximum[15]),
        .O(i___0_carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'h363C9C3C)) 
    i___0_carry__3_i_5
       (.I0(maximum[18]),
        .I1(maximum[20]),
        .I2(btn_3),
        .I3(maximum[19]),
        .I4(i___0_carry__1_i_11_n_0),
        .O(i___0_carry__3_i_5_n_0));
  LUT5 #(
    .INIT(32'h66969666)) 
    i___0_carry__3_i_6
       (.I0(i___0_carry__3_i_2_n_0),
        .I1(maximum[19]),
        .I2(maximum[18]),
        .I3(i___0_carry__1_i_11_n_0),
        .I4(btn_3),
        .O(i___0_carry__3_i_6_n_0));
  LUT5 #(
    .INIT(32'h55559AA9)) 
    i___0_carry__3_i_7
       (.I0(i___0_carry__3_i_3_n_0),
        .I1(maximum[17]),
        .I2(maximum[18]),
        .I3(i___0_carry__1_i_10_n_0),
        .I4(i___0_carry__3_i_9_n_0),
        .O(i___0_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry__3_i_8
       (.I0(i___0_carry__3_i_4_n_0),
        .I1(i___0_carry__3_i_10_n_0),
        .O(i___0_carry__3_i_8_n_0));
  LUT6 #(
    .INIT(64'h10EF00CFEF100000)) 
    i___0_carry__3_i_9
       (.I0(difficulty[1]),
        .I1(difficulty[0]),
        .I2(difficulty[3]),
        .I3(btn_3),
        .I4(maximum[17]),
        .I5(maximum[18]),
        .O(i___0_carry__3_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___0_carry__4_i_1
       (.I0(maximum[21]),
        .O(i___0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__4_i_2
       (.I0(maximum[23]),
        .I1(maximum[24]),
        .O(i___0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__4_i_3
       (.I0(maximum[22]),
        .I1(maximum[23]),
        .O(i___0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__4_i_4
       (.I0(maximum[21]),
        .I1(maximum[22]),
        .O(i___0_carry__4_i_4_n_0));
  LUT5 #(
    .INIT(32'hBF3240CD)) 
    i___0_carry__4_i_5
       (.I0(maximum[19]),
        .I1(btn_3),
        .I2(i___0_carry__1_i_11_n_0),
        .I3(maximum[20]),
        .I4(maximum[21]),
        .O(i___0_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__5_i_1
       (.I0(maximum[27]),
        .I1(maximum[28]),
        .O(i___0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__5_i_2
       (.I0(maximum[26]),
        .I1(maximum[27]),
        .O(i___0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__5_i_3
       (.I0(maximum[25]),
        .I1(maximum[26]),
        .O(i___0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__5_i_4
       (.I0(maximum[24]),
        .I1(maximum[25]),
        .O(i___0_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__6_i_1
       (.I0(maximum[30]),
        .I1(maximum[31]),
        .O(i___0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__6_i_2
       (.I0(maximum[29]),
        .I1(maximum[30]),
        .O(i___0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry__6_i_3
       (.I0(maximum[28]),
        .I1(maximum[29]),
        .O(i___0_carry__6_i_3_n_0));
  LUT5 #(
    .INIT(32'h99999969)) 
    i___0_carry_i_1
       (.I0(maximum[4]),
        .I1(btn_3),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(difficulty[1]),
        .O(i___0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h6666666666696666)) 
    i___0_carry_i_2
       (.I0(maximum[3]),
        .I1(btn_3),
        .I2(difficulty[1]),
        .I3(difficulty[0]),
        .I4(difficulty[3]),
        .I5(difficulty[2]),
        .O(i___0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h6696666666666666)) 
    i___0_carry_i_3
       (.I0(maximum[2]),
        .I1(btn_3),
        .I2(difficulty[2]),
        .I3(difficulty[0]),
        .I4(difficulty[3]),
        .I5(difficulty[1]),
        .O(i___0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h66966666)) 
    i___0_carry_i_4
       (.I0(maximum[1]),
        .I1(btn_3),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(difficulty[2]),
        .O(i___0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8888C8CE88888888)) 
    i__carry__0_i_1
       (.I0(maximum[14]),
        .I1(maximum[15]),
        .I2(difficulty[2]),
        .I3(difficulty[1]),
        .I4(difficulty[0]),
        .I5(difficulty[3]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF6FFF4F00000000)) 
    i__carry__0_i_2
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(maximum[12]),
        .I5(maximum[13]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF001000000000)) 
    i__carry__0_i_3
       (.I0(difficulty[1]),
        .I1(difficulty[0]),
        .I2(difficulty[3]),
        .I3(difficulty[2]),
        .I4(maximum[10]),
        .I5(maximum[11]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8888C8EC88888888)) 
    i__carry__0_i_4
       (.I0(maximum[8]),
        .I1(maximum[9]),
        .I2(difficulty[2]),
        .I3(difficulty[1]),
        .I4(difficulty[0]),
        .I5(difficulty[3]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000A0FF4F0010)) 
    i__carry__0_i_5
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(maximum[15]),
        .I5(maximum[14]),
        .O(i__carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h00900020FF4F0000)) 
    i__carry__0_i_6
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(maximum[12]),
        .I5(maximum[13]),
        .O(i__carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000FFEF00100000)) 
    i__carry__0_i_7
       (.I0(difficulty[1]),
        .I1(difficulty[0]),
        .I2(difficulty[3]),
        .I3(difficulty[2]),
        .I4(maximum[10]),
        .I5(maximum[11]),
        .O(i__carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000090FF4F0020)) 
    i__carry__0_i_8
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(maximum[9]),
        .I5(maximum[8]),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA20AA)) 
    i__carry__1_i_1
       (.I0(maximum[22]),
        .I1(difficulty[2]),
        .I2(difficulty[1]),
        .I3(difficulty[3]),
        .I4(difficulty[0]),
        .I5(maximum[23]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h0C00080008000800)) 
    i__carry__1_i_2
       (.I0(maximum[21]),
        .I1(difficulty[2]),
        .I2(difficulty[0]),
        .I3(difficulty[3]),
        .I4(difficulty[1]),
        .I5(maximum[20]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hA2AAABAA00000000)) 
    i__carry__1_i_3
       (.I0(maximum[18]),
        .I1(difficulty[1]),
        .I2(difficulty[0]),
        .I3(difficulty[3]),
        .I4(difficulty[2]),
        .I5(maximum[19]),
        .O(i__carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    i__carry__1_i_4
       (.I0(maximum[17]),
        .I1(difficulty[2]),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(difficulty[1]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000000B00F4FF)) 
    i__carry__1_i_5
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(difficulty[0]),
        .I3(difficulty[3]),
        .I4(maximum[22]),
        .I5(maximum[23]),
        .O(i__carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hF3FF000004000800)) 
    i__carry__1_i_6
       (.I0(difficulty[1]),
        .I1(difficulty[3]),
        .I2(difficulty[0]),
        .I3(difficulty[2]),
        .I4(maximum[20]),
        .I5(maximum[21]),
        .O(i__carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h40000004BFFB0000)) 
    i__carry__1_i_7
       (.I0(difficulty[0]),
        .I1(difficulty[3]),
        .I2(difficulty[2]),
        .I3(difficulty[1]),
        .I4(maximum[19]),
        .I5(maximum[18]),
        .O(i__carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hEFFF000010000000)) 
    i__carry__1_i_8
       (.I0(difficulty[1]),
        .I1(difficulty[0]),
        .I2(difficulty[3]),
        .I3(difficulty[2]),
        .I4(maximum[16]),
        .I5(maximum[17]),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(maximum[30]),
        .I1(maximum[31]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(maximum[28]),
        .I1(maximum[29]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(maximum[26]),
        .I1(maximum[27]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(maximum[24]),
        .I1(maximum[25]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_5
       (.I0(maximum[30]),
        .I1(maximum[31]),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_6
       (.I0(maximum[28]),
        .I1(maximum[29]),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_7
       (.I0(maximum[26]),
        .I1(maximum[27]),
        .O(i__carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_8
       (.I0(maximum[24]),
        .I1(maximum[25]),
        .O(i__carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'h0C040C000C000000)) 
    i__carry_i_1
       (.I0(difficulty[1]),
        .I1(difficulty[3]),
        .I2(difficulty[0]),
        .I3(difficulty[2]),
        .I4(maximum[6]),
        .I5(maximum[7]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(counter_reg[11]),
        .I1(maximum[11]),
        .I2(counter_reg[10]),
        .I3(maximum[10]),
        .I4(maximum[9]),
        .I5(counter_reg[9]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__1
       (.I0(counter_reg[23]),
        .I1(maximum[23]),
        .I2(counter_reg[22]),
        .I3(maximum[22]),
        .I4(maximum[21]),
        .I5(counter_reg[21]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_1__2
       (.I0(counter_reg[31]),
        .I1(maximum[31]),
        .I2(counter_reg[30]),
        .I3(maximum[30]),
        .O(i__carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAFAA2FA)) 
    i__carry_i_2
       (.I0(maximum[5]),
        .I1(difficulty[2]),
        .I2(maximum[4]),
        .I3(difficulty[3]),
        .I4(difficulty[0]),
        .I5(difficulty[1]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(counter_reg[8]),
        .I1(maximum[8]),
        .I2(counter_reg[7]),
        .I3(maximum[7]),
        .I4(maximum[6]),
        .I5(counter_reg[6]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__1
       (.I0(counter_reg[20]),
        .I1(maximum[20]),
        .I2(counter_reg[19]),
        .I3(maximum[19]),
        .I4(maximum[18]),
        .I5(counter_reg[18]),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__2
       (.I0(counter_reg[29]),
        .I1(maximum[29]),
        .I2(counter_reg[28]),
        .I3(maximum[28]),
        .I4(maximum[27]),
        .I5(counter_reg[27]),
        .O(i__carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'hA0AAABAA00000000)) 
    i__carry_i_3
       (.I0(maximum[2]),
        .I1(difficulty[1]),
        .I2(difficulty[0]),
        .I3(difficulty[3]),
        .I4(difficulty[2]),
        .I5(maximum[3]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(counter_reg[5]),
        .I1(maximum[5]),
        .I2(counter_reg[4]),
        .I3(maximum[4]),
        .I4(maximum[3]),
        .I5(counter_reg[3]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__1
       (.I0(counter_reg[17]),
        .I1(maximum[17]),
        .I2(counter_reg[16]),
        .I3(maximum[16]),
        .I4(maximum[15]),
        .I5(counter_reg[15]),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__2
       (.I0(counter_reg[26]),
        .I1(maximum[26]),
        .I2(counter_reg[25]),
        .I3(maximum[25]),
        .I4(maximum[24]),
        .I5(counter_reg[24]),
        .O(i__carry_i_3__2_n_0));
  LUT5 #(
    .INIT(32'h20100000)) 
    i__carry_i_4
       (.I0(difficulty[1]),
        .I1(difficulty[0]),
        .I2(difficulty[3]),
        .I3(difficulty[2]),
        .I4(maximum[1]),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h41000041)) 
    i__carry_i_4__0
       (.I0(counter_reg[0]),
        .I1(counter_reg[2]),
        .I2(maximum[2]),
        .I3(maximum[1]),
        .I4(counter_reg[1]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__1
       (.I0(counter_reg[14]),
        .I1(maximum[14]),
        .I2(counter_reg[13]),
        .I3(maximum[13]),
        .I4(maximum[12]),
        .I5(counter_reg[12]),
        .O(i__carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'hFF4F0010000000A0)) 
    i__carry_i_5
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(maximum[6]),
        .I5(maximum[7]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h000000080004FFF3)) 
    i__carry_i_6
       (.I0(difficulty[2]),
        .I1(difficulty[3]),
        .I2(difficulty[0]),
        .I3(difficulty[1]),
        .I4(maximum[4]),
        .I5(maximum[5]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h00A00010FF4F0000)) 
    i__carry_i_7
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(maximum[3]),
        .I5(maximum[2]),
        .O(i__carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hAA2AAA1A)) 
    i__carry_i_8
       (.I0(maximum[1]),
        .I1(difficulty[2]),
        .I2(difficulty[3]),
        .I3(difficulty[0]),
        .I4(difficulty[1]),
        .O(i__carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 maximum0_carry
       (.CI(1'b0),
        .CO({maximum0_carry_n_0,maximum0_carry_n_1,maximum0_carry_n_2,maximum0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({maximum0_carry_i_1_n_0,maximum0_carry_i_2_n_0,1'b0,1'b0}),
        .O(NLW_maximum0_carry_O_UNCONNECTED[3:0]),
        .S({maximum0_carry_i_3_n_0,maximum0_carry_i_4_n_0,maximum0_carry_i_5_n_0,maximum0_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 maximum0_carry__0
       (.CI(maximum0_carry_n_0),
        .CO({maximum0_carry__0_n_0,maximum0_carry__0_n_1,maximum0_carry__0_n_2,maximum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({maximum0_carry__0_i_1_n_0,maximum0_carry__0_i_2_n_0,maximum0_carry__0_i_3_n_0,maximum0_carry__0_i_4_n_0}),
        .O(NLW_maximum0_carry__0_O_UNCONNECTED[3:0]),
        .S({maximum0_carry__0_i_5_n_0,maximum0_carry__0_i_6_n_0,maximum0_carry__0_i_7_n_0,maximum0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    maximum0_carry__0_i_1
       (.I0(maximum[14]),
        .I1(maximum[15]),
        .O(maximum0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry__0_i_2
       (.I0(maximum[12]),
        .I1(maximum[13]),
        .O(maximum0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry__0_i_3
       (.I0(maximum[10]),
        .I1(maximum[11]),
        .O(maximum0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    maximum0_carry__0_i_4
       (.I0(maximum[9]),
        .O(maximum0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    maximum0_carry__0_i_5
       (.I0(maximum[15]),
        .I1(maximum[14]),
        .O(maximum0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    maximum0_carry__0_i_6
       (.I0(maximum[12]),
        .I1(maximum[13]),
        .O(maximum0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    maximum0_carry__0_i_7
       (.I0(maximum[10]),
        .I1(maximum[11]),
        .O(maximum0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    maximum0_carry__0_i_8
       (.I0(maximum[9]),
        .I1(maximum[8]),
        .O(maximum0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 maximum0_carry__1
       (.CI(maximum0_carry__0_n_0),
        .CO({maximum0_carry__1_n_0,maximum0_carry__1_n_1,maximum0_carry__1_n_2,maximum0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({maximum0_carry__1_i_1_n_0,maximum0_carry__1_i_2_n_0,maximum0_carry__1_i_3_n_0,1'b0}),
        .O(NLW_maximum0_carry__1_O_UNCONNECTED[3:0]),
        .S({maximum0_carry__1_i_4_n_0,maximum0_carry__1_i_5_n_0,maximum0_carry__1_i_6_n_0,maximum0_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    maximum0_carry__1_i_1
       (.I0(maximum[22]),
        .I1(maximum[23]),
        .O(maximum0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry__1_i_2
       (.I0(maximum[20]),
        .I1(maximum[21]),
        .O(maximum0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    maximum0_carry__1_i_3
       (.I0(maximum[18]),
        .I1(maximum[19]),
        .O(maximum0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    maximum0_carry__1_i_4
       (.I0(maximum[22]),
        .I1(maximum[23]),
        .O(maximum0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    maximum0_carry__1_i_5
       (.I0(maximum[20]),
        .I1(maximum[21]),
        .O(maximum0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    maximum0_carry__1_i_6
       (.I0(maximum[19]),
        .I1(maximum[18]),
        .O(maximum0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry__1_i_7
       (.I0(maximum[16]),
        .I1(maximum[17]),
        .O(maximum0_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 maximum0_carry__2
       (.CI(maximum0_carry__1_n_0),
        .CO({maximum0_carry__2_n_0,maximum0_carry__2_n_1,maximum0_carry__2_n_2,maximum0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({maximum[31],1'b0,1'b0,maximum0_carry__2_i_1_n_0}),
        .O(NLW_maximum0_carry__2_O_UNCONNECTED[3:0]),
        .S({maximum0_carry__2_i_2_n_0,maximum0_carry__2_i_3_n_0,maximum0_carry__2_i_4_n_0,maximum0_carry__2_i_5_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry__2_i_1
       (.I0(maximum[24]),
        .I1(maximum[25]),
        .O(maximum0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry__2_i_2
       (.I0(maximum[30]),
        .I1(maximum[31]),
        .O(maximum0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry__2_i_3
       (.I0(maximum[28]),
        .I1(maximum[29]),
        .O(maximum0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry__2_i_4
       (.I0(maximum[26]),
        .I1(maximum[27]),
        .O(maximum0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    maximum0_carry__2_i_5
       (.I0(maximum[24]),
        .I1(maximum[25]),
        .O(maximum0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry_i_1
       (.I0(maximum[7]),
        .I1(maximum[6]),
        .O(maximum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry_i_2
       (.I0(maximum[4]),
        .I1(maximum[5]),
        .O(maximum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    maximum0_carry_i_3
       (.I0(maximum[6]),
        .I1(maximum[7]),
        .O(maximum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    maximum0_carry_i_4
       (.I0(maximum[4]),
        .I1(maximum[5]),
        .O(maximum0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    maximum0_carry_i_5
       (.I0(maximum[2]),
        .I1(maximum[3]),
        .O(maximum0_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    maximum0_carry_i_6
       (.I0(maximum[1]),
        .O(maximum0_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \maximum0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\maximum0_inferred__0/i__carry_n_0 ,\maximum0_inferred__0/i__carry_n_1 ,\maximum0_inferred__0/i__carry_n_2 ,\maximum0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_maximum0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \maximum0_inferred__0/i__carry__0 
       (.CI(\maximum0_inferred__0/i__carry_n_0 ),
        .CO({\maximum0_inferred__0/i__carry__0_n_0 ,\maximum0_inferred__0/i__carry__0_n_1 ,\maximum0_inferred__0/i__carry__0_n_2 ,\maximum0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_maximum0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \maximum0_inferred__0/i__carry__1 
       (.CI(\maximum0_inferred__0/i__carry__0_n_0 ),
        .CO({\maximum0_inferred__0/i__carry__1_n_0 ,\maximum0_inferred__0/i__carry__1_n_1 ,\maximum0_inferred__0/i__carry__1_n_2 ,\maximum0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_maximum0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \maximum0_inferred__0/i__carry__2 
       (.CI(\maximum0_inferred__0/i__carry__1_n_0 ),
        .CO({\maximum0_inferred__0/i__carry__2_n_0 ,\maximum0_inferred__0/i__carry__2_n_1 ,\maximum0_inferred__0/i__carry__2_n_2 ,\maximum0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_maximum0_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0000000)) 
    \maximum[31]_i_1 
       (.I0(running_reg_n_0),
        .I1(up_r),
        .I2(\maximum0_inferred__0/i__carry__2_n_0 ),
        .I3(counter12_in),
        .I4(btn_3),
        .I5(\maximum[31]_i_2_n_0 ),
        .O(\maximum[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \maximum[31]_i_2 
       (.I0(maximum0_carry__2_n_0),
        .I1(running_reg_n_0),
        .I2(counter1__15),
        .I3(btn_3),
        .I4(counter12_in),
        .O(\maximum[31]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[10] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[10]),
        .Q(maximum[10]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[11] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[11]),
        .Q(maximum[11]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[12] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[12]),
        .Q(maximum[12]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[13] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[13]),
        .Q(maximum[13]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[14] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[14]),
        .Q(maximum[14]),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[15] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[15]),
        .Q(maximum[15]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[16] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[16]),
        .Q(maximum[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[17] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[17]),
        .Q(maximum[17]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[18] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[18]),
        .Q(maximum[18]),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[19] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[19]),
        .Q(maximum[19]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[1] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[1]),
        .Q(maximum[1]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[20] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[20]),
        .Q(maximum[20]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[21] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[21]),
        .Q(maximum[21]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[22] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[22]),
        .Q(maximum[22]),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[23] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[23]),
        .Q(maximum[23]),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[24] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[24]),
        .Q(maximum[24]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[25] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[25]),
        .Q(maximum[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[26] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[26]),
        .Q(maximum[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[27] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[27]),
        .Q(maximum[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[28] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[28]),
        .Q(maximum[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[29] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[29]),
        .Q(maximum[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[2] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[2]),
        .Q(maximum[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[30] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[30]),
        .Q(maximum[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[31] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[31]),
        .Q(maximum[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[3] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[3]),
        .Q(maximum[3]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[4] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[4]),
        .Q(maximum[4]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[5] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[5]),
        .Q(maximum[5]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[6] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[6]),
        .Q(maximum[6]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[7] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[7]),
        .Q(maximum[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \maximum_reg[8] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[8]),
        .Q(maximum[8]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \maximum_reg[9] 
       (.C(clk),
        .CE(\maximum[31]_i_1_n_0 ),
        .D(maximum1_in[9]),
        .Q(maximum[9]),
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    running_i_1
       (.I0(up_r),
        .I1(btn_3),
        .I2(running_reg_n_0),
        .O(running));
  FDRE #(
    .INIT(1'b0)) 
    running_reg
       (.C(clk),
        .CE(1'b1),
        .D(running),
        .Q(running_reg_n_0),
        .R(clear));
  LUT6 #(
    .INIT(64'h5DFF5D5FA200A2A0)) 
    special_clk_i_1
       (.I0(counter12_in),
        .I1(counter1__15),
        .I2(btn_3),
        .I3(running_reg_n_0),
        .I4(up_r),
        .I5(special_clk),
        .O(special_clk_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    special_clk_out_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  FDRE special_clk_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(special_clk),
        .Q(special_clk_out),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    special_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(special_clk_i_1_n_0),
        .Q(special_clk),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    stop_i_1
       (.I0(counter1__15),
        .I1(running_reg_n_0),
        .I2(btn_3),
        .I3(stop),
        .O(stop_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stop_reg
       (.C(clk),
        .CE(1'b1),
        .D(stop_i_1_n_0),
        .Q(stop),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    up_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_3),
        .Q(up_r),
        .R(clear));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_clk_manager_0_0,clk_manager,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "clk_manager,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (state,
    clk,
    btn_3,
    special_clk_out,
    stop,
    difficulty);
  input [1:0]state;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input btn_3;
  output special_clk_out;
  output stop;
  input [3:0]difficulty;

  wire btn_3;
  wire clk;
  wire [3:0]difficulty;
  wire special_clk_out;
  wire [1:0]state;
  wire stop;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_manager U0
       (.btn_3(btn_3),
        .clk(clk),
        .difficulty(difficulty),
        .special_clk_out(special_clk_out),
        .state(state),
        .stop(stop));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
