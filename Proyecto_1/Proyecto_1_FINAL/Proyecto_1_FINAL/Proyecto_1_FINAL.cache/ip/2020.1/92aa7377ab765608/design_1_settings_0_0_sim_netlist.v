// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Oct  2 13:22:04 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_settings_0_0_sim_netlist.v
// Design      : design_1_settings_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_settings_0_0,settings,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "settings,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    state,
    btn_1,
    btn_2,
    difficulty,
    led);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input [1:0]state;
  input btn_1;
  input btn_2;
  output [3:0]difficulty;
  output [3:0]led;

  wire btn_1;
  wire clk;
  wire [3:0]difficulty;
  wire [3:0]led;
  wire [1:0]state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_settings U0
       (.btn_1(btn_1),
        .clk(clk),
        .difficulty(difficulty),
        .led(led),
        .state(state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_settings
   (difficulty,
    led,
    clk,
    btn_1,
    state);
  output [3:0]difficulty;
  output [3:0]led;
  input clk;
  input btn_1;
  input [1:0]state;

  wire \FSM_onehot_level[0]_i_1_n_0 ;
  wire \FSM_onehot_level_reg_n_0_[0] ;
  wire \FSM_onehot_level_reg_n_0_[1] ;
  wire \FSM_onehot_level_reg_n_0_[2] ;
  wire \FSM_onehot_level_reg_n_0_[3] ;
  wire btn_1;
  wire clk;
  wire [3:0]difficulty;
  wire difficulty0;
  wire [3:0]led;
  wire \led[3]_i_1_n_0 ;
  wire level0;
  wire [3:1]level_reg;
  wire [1:0]state;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_level[0]_i_1 
       (.I0(\FSM_onehot_level_reg_n_0_[1] ),
        .I1(\FSM_onehot_level_reg_n_0_[0] ),
        .I2(\FSM_onehot_level_reg_n_0_[2] ),
        .O(\FSM_onehot_level[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \FSM_onehot_level[3]_i_1 
       (.I0(\led[3]_i_1_n_0 ),
        .I1(\FSM_onehot_level_reg_n_0_[3] ),
        .I2(\FSM_onehot_level_reg_n_0_[2] ),
        .I3(\FSM_onehot_level_reg_n_0_[0] ),
        .I4(\FSM_onehot_level_reg_n_0_[1] ),
        .I5(btn_1),
        .O(level0));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:10000,iSTATE3:01000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_level_reg[0] 
       (.C(clk),
        .CE(level0),
        .D(\FSM_onehot_level[0]_i_1_n_0 ),
        .Q(\FSM_onehot_level_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:10000,iSTATE3:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_level_reg[1] 
       (.C(clk),
        .CE(level0),
        .D(\FSM_onehot_level_reg_n_0_[0] ),
        .Q(\FSM_onehot_level_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:10000,iSTATE3:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_level_reg[2] 
       (.C(clk),
        .CE(level0),
        .D(\FSM_onehot_level_reg_n_0_[1] ),
        .Q(\FSM_onehot_level_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:10000,iSTATE3:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_level_reg[3] 
       (.C(clk),
        .CE(level0),
        .D(\FSM_onehot_level_reg_n_0_[2] ),
        .Q(\FSM_onehot_level_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \difficulty[1]_i_1 
       (.I0(\FSM_onehot_level_reg_n_0_[2] ),
        .I1(\FSM_onehot_level_reg_n_0_[3] ),
        .O(level_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \difficulty[2]_i_1 
       (.I0(\FSM_onehot_level_reg_n_0_[2] ),
        .I1(\FSM_onehot_level_reg_n_0_[1] ),
        .I2(\FSM_onehot_level_reg_n_0_[3] ),
        .O(level_reg[2]));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \difficulty[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_onehot_level_reg_n_0_[1] ),
        .I3(\FSM_onehot_level_reg_n_0_[0] ),
        .I4(\FSM_onehot_level_reg_n_0_[2] ),
        .I5(\FSM_onehot_level_reg_n_0_[3] ),
        .O(difficulty0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \difficulty[3]_i_2 
       (.I0(\FSM_onehot_level_reg_n_0_[3] ),
        .I1(\FSM_onehot_level_reg_n_0_[2] ),
        .I2(\FSM_onehot_level_reg_n_0_[0] ),
        .I3(\FSM_onehot_level_reg_n_0_[1] ),
        .O(level_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \difficulty_reg[0] 
       (.C(clk),
        .CE(difficulty0),
        .D(\FSM_onehot_level_reg_n_0_[3] ),
        .Q(difficulty[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \difficulty_reg[1] 
       (.C(clk),
        .CE(difficulty0),
        .D(level_reg[1]),
        .Q(difficulty[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \difficulty_reg[2] 
       (.C(clk),
        .CE(difficulty0),
        .D(level_reg[2]),
        .Q(difficulty[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \difficulty_reg[3] 
       (.C(clk),
        .CE(difficulty0),
        .D(level_reg[3]),
        .Q(difficulty[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \led[3]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\led[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.C(clk),
        .CE(\led[3]_i_1_n_0 ),
        .D(\FSM_onehot_level_reg_n_0_[3] ),
        .Q(led[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[1] 
       (.C(clk),
        .CE(\led[3]_i_1_n_0 ),
        .D(level_reg[1]),
        .Q(led[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[2] 
       (.C(clk),
        .CE(\led[3]_i_1_n_0 ),
        .D(level_reg[2]),
        .Q(led[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \led_reg[3] 
       (.C(clk),
        .CE(\led[3]_i_1_n_0 ),
        .D(level_reg[3]),
        .Q(led[3]),
        .R(1'b0));
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
