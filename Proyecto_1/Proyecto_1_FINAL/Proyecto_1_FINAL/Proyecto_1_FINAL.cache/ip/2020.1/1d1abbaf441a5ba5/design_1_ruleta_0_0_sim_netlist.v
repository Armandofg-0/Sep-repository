// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Oct  2 13:22:04 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ruleta_0_0_sim_netlist.v
// Design      : design_1_ruleta_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ruleta_0_0,ruleta,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ruleta,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    state,
    special_clk_out,
    stop,
    difficulty,
    result);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input [1:0]state;
  input special_clk_out;
  input stop;
  input [3:0]difficulty;
  output [3:0]result;

  wire clk;
  wire [3:0]difficulty;
  wire [3:0]result;
  wire special_clk_out;
  wire [1:0]state;
  wire stop;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ruleta U0
       (.Q(result),
        .clk(clk),
        .difficulty(difficulty),
        .special_clk_out(special_clk_out),
        .state(state),
        .stop(stop));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ruleta
   (Q,
    state,
    clk,
    special_clk_out,
    difficulty,
    stop);
  output [3:0]Q;
  input [1:0]state;
  input clk;
  input special_clk_out;
  input [3:0]difficulty;
  input stop;

  wire [3:0]Q;
  wire clk;
  wire [1:0]curr_state;
  wire [3:0]difficulty;
  wire dir;
  wire direction_i_1_n_0;
  wire direction_i_2_n_0;
  wire [1:0]jump_typ;
  wire \jump_type[0]_i_1_n_0 ;
  wire \jump_type[1]_i_1_n_0 ;
  wire led0;
  wire \led_signal[0]_i_1_n_0 ;
  wire \led_signal[0]_i_2_n_0 ;
  wire \led_signal[0]_i_3_n_0 ;
  wire \led_signal[1]_i_1_n_0 ;
  wire \led_signal[1]_i_2_n_0 ;
  wire \led_signal[1]_i_3_n_0 ;
  wire \led_signal[2]_i_1_n_0 ;
  wire \led_signal[2]_i_2_n_0 ;
  wire \led_signal[2]_i_3_n_0 ;
  wire \led_signal[3]_i_2_n_0 ;
  wire \led_signal[3]_i_3_n_0 ;
  wire \led_signal[3]_i_4_n_0 ;
  wire \led_signal[3]_i_5_n_0 ;
  wire \led_signal[3]_i_6_n_0 ;
  wire \led_signal[3]_i_7_n_0 ;
  wire \led_signal[3]_i_8_n_0 ;
  wire [1:0]prev_state;
  wire reset_done;
  wire reset_req;
  wire reset_req_i_1_n_0;
  wire special_clk_out;
  wire [1:0]state;
  wire [1:0]step_cnt;
  wire \step_cnter[0]_i_1_n_0 ;
  wire \step_cnter[1]_i_1_n_0 ;
  wire stop;

  FDRE \curr_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(state[0]),
        .Q(curr_state[0]),
        .R(1'b0));
  FDRE \curr_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(state[1]),
        .Q(curr_state[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEA2AAA)) 
    direction_i_1
       (.I0(dir),
        .I1(led0),
        .I2(direction_i_2_n_0),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(reset_req),
        .O(direction_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    direction_i_2
       (.I0(difficulty[2]),
        .I1(difficulty[1]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(difficulty[3]),
        .I5(difficulty[0]),
        .O(direction_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    direction_reg
       (.C(special_clk_out),
        .CE(1'b1),
        .D(direction_i_1_n_0),
        .Q(dir),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F0F2F2FD0F0D0D0)) 
    \jump_type[0]_i_1 
       (.I0(difficulty[3]),
        .I1(difficulty[0]),
        .I2(led0),
        .I3(difficulty[2]),
        .I4(difficulty[1]),
        .I5(jump_typ[0]),
        .O(\jump_type[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFF7FFAA000800)) 
    \jump_type[1]_i_1 
       (.I0(jump_typ[0]),
        .I1(difficulty[1]),
        .I2(difficulty[2]),
        .I3(led0),
        .I4(\led_signal[3]_i_3_n_0 ),
        .I5(jump_typ[1]),
        .O(\jump_type[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \jump_type_reg[0] 
       (.C(special_clk_out),
        .CE(1'b1),
        .D(\jump_type[0]_i_1_n_0 ),
        .Q(jump_typ[0]),
        .R(reset_req));
  FDRE #(
    .INIT(1'b0)) 
    \jump_type_reg[1] 
       (.C(special_clk_out),
        .CE(1'b1),
        .D(\jump_type[1]_i_1_n_0 ),
        .Q(jump_typ[1]),
        .R(reset_req));
  LUT6 #(
    .INIT(64'hFFFF5555FFEA4040)) 
    \led_signal[0]_i_1 
       (.I0(\led_signal[3]_i_3_n_0 ),
        .I1(\led_signal[3]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(\led_signal[3]_i_5_n_0 ),
        .I4(\led_signal[0]_i_2_n_0 ),
        .I5(\led_signal[0]_i_3_n_0 ),
        .O(\led_signal[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCAAC)) 
    \led_signal[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(jump_typ[0]),
        .I3(jump_typ[1]),
        .O(\led_signal[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08AA080000000000)) 
    \led_signal[0]_i_3 
       (.I0(difficulty[2]),
        .I1(step_cnt[1]),
        .I2(step_cnt[0]),
        .I3(difficulty[1]),
        .I4(\led_signal[3]_i_8_n_0 ),
        .I5(Q[1]),
        .O(\led_signal[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFEA4040)) 
    \led_signal[1]_i_1 
       (.I0(\led_signal[3]_i_3_n_0 ),
        .I1(\led_signal[3]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(\led_signal[3]_i_5_n_0 ),
        .I4(\led_signal[1]_i_2_n_0 ),
        .I5(\led_signal[1]_i_3_n_0 ),
        .O(\led_signal[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCAAC)) 
    \led_signal[1]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(jump_typ[0]),
        .I3(jump_typ[1]),
        .O(\led_signal[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08AA080000000000)) 
    \led_signal[1]_i_3 
       (.I0(difficulty[2]),
        .I1(step_cnt[1]),
        .I2(step_cnt[0]),
        .I3(difficulty[1]),
        .I4(\led_signal[3]_i_8_n_0 ),
        .I5(Q[2]),
        .O(\led_signal[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFEA4040)) 
    \led_signal[2]_i_1 
       (.I0(\led_signal[3]_i_3_n_0 ),
        .I1(\led_signal[3]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\led_signal[3]_i_5_n_0 ),
        .I4(\led_signal[2]_i_2_n_0 ),
        .I5(\led_signal[2]_i_3_n_0 ),
        .O(\led_signal[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCAAC)) 
    \led_signal[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(jump_typ[0]),
        .I3(jump_typ[1]),
        .O(\led_signal[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08AA080000000000)) 
    \led_signal[2]_i_3 
       (.I0(difficulty[2]),
        .I1(step_cnt[1]),
        .I2(step_cnt[0]),
        .I3(difficulty[1]),
        .I4(\led_signal[3]_i_8_n_0 ),
        .I5(Q[3]),
        .O(\led_signal[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \led_signal[3]_i_1 
       (.I0(stop),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .O(led0));
  LUT6 #(
    .INIT(64'hFFFF5555FFEA4040)) 
    \led_signal[3]_i_2 
       (.I0(\led_signal[3]_i_3_n_0 ),
        .I1(\led_signal[3]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\led_signal[3]_i_5_n_0 ),
        .I4(\led_signal[3]_i_6_n_0 ),
        .I5(\led_signal[3]_i_7_n_0 ),
        .O(\led_signal[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \led_signal[3]_i_3 
       (.I0(difficulty[0]),
        .I1(difficulty[3]),
        .O(\led_signal[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC05FF05F)) 
    \led_signal[3]_i_4 
       (.I0(\led_signal[3]_i_8_n_0 ),
        .I1(step_cnt[0]),
        .I2(difficulty[2]),
        .I3(difficulty[1]),
        .I4(step_cnt[1]),
        .O(\led_signal[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_signal[3]_i_5 
       (.I0(difficulty[1]),
        .I1(difficulty[2]),
        .O(\led_signal[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCAAC)) 
    \led_signal[3]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(jump_typ[0]),
        .I3(jump_typ[1]),
        .O(\led_signal[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08AA080000000000)) 
    \led_signal[3]_i_7 
       (.I0(difficulty[2]),
        .I1(step_cnt[1]),
        .I2(step_cnt[0]),
        .I3(difficulty[1]),
        .I4(\led_signal[3]_i_8_n_0 ),
        .I5(Q[0]),
        .O(\led_signal[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55555745)) 
    \led_signal[3]_i_8 
       (.I0(dir),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\led_signal[3]_i_8_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \led_signal_reg[0] 
       (.C(special_clk_out),
        .CE(led0),
        .D(\led_signal[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(reset_req));
  FDRE #(
    .INIT(1'b0)) 
    \led_signal_reg[1] 
       (.C(special_clk_out),
        .CE(led0),
        .D(\led_signal[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(reset_req));
  FDRE #(
    .INIT(1'b0)) 
    \led_signal_reg[2] 
       (.C(special_clk_out),
        .CE(led0),
        .D(\led_signal[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(reset_req));
  FDRE #(
    .INIT(1'b0)) 
    \led_signal_reg[3] 
       (.C(special_clk_out),
        .CE(led0),
        .D(\led_signal[3]_i_2_n_0 ),
        .Q(Q[3]),
        .R(reset_req));
  FDRE #(
    .INIT(1'b1)) 
    \prev_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_state[0]),
        .Q(prev_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(curr_state[1]),
        .Q(prev_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    reset_done_reg
       (.C(special_clk_out),
        .CE(1'b1),
        .D(reset_req),
        .Q(reset_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0020FFFF00200020)) 
    reset_req_i_1
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(prev_state[0]),
        .I3(prev_state[1]),
        .I4(reset_done),
        .I5(reset_req),
        .O(reset_req_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_req_reg
       (.C(clk),
        .CE(1'b1),
        .D(reset_req_i_1_n_0),
        .Q(reset_req),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \step_cnter[0]_i_1 
       (.I0(led0),
        .I1(difficulty[2]),
        .I2(difficulty[1]),
        .I3(difficulty[3]),
        .I4(difficulty[0]),
        .I5(step_cnt[0]),
        .O(\step_cnter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \step_cnter[1]_i_1 
       (.I0(step_cnt[0]),
        .I1(\led_signal[3]_i_3_n_0 ),
        .I2(difficulty[1]),
        .I3(difficulty[2]),
        .I4(led0),
        .I5(step_cnt[1]),
        .O(\step_cnter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnter_reg[0] 
       (.C(special_clk_out),
        .CE(1'b1),
        .D(\step_cnter[0]_i_1_n_0 ),
        .Q(step_cnt[0]),
        .R(reset_req));
  FDRE #(
    .INIT(1'b0)) 
    \step_cnter_reg[1] 
       (.C(special_clk_out),
        .CE(1'b1),
        .D(\step_cnter[1]_i_1_n_0 ),
        .Q(step_cnt[1]),
        .R(reset_req));
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
