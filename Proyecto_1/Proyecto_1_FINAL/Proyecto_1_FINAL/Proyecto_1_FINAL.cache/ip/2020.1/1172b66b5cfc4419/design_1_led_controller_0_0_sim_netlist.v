// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Oct  2 13:25:36 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_led_controller_0_0_sim_netlist.v
// Design      : design_1_led_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_led_controller_0_0,led_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "led_controller,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ruleta_out,
    settings_out,
    guess,
    state,
    leds);
  input [3:0]ruleta_out;
  input [3:0]settings_out;
  input [3:0]guess;
  input [1:0]state;
  output [3:0]leds;

  wire [3:0]guess;
  wire [3:0]leds;
  wire [3:0]ruleta_out;
  wire [3:0]settings_out;
  wire [1:0]state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller U0
       (.guess(guess),
        .leds(leds),
        .ruleta_out(ruleta_out),
        .settings_out(settings_out),
        .state(state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_controller
   (leds,
    settings_out,
    state,
    guess,
    ruleta_out);
  output [3:0]leds;
  input [3:0]settings_out;
  input [1:0]state;
  input [3:0]guess;
  input [3:0]ruleta_out;

  wire [3:0]guess;
  wire [3:0]leds;
  wire [3:0]ruleta_out;
  wire [3:0]settings_out;
  wire [1:0]state;

  LUT5 #(
    .INIT(32'hFE0E3202)) 
    \leds[0]_INST_0 
       (.I0(settings_out[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(guess[0]),
        .I4(ruleta_out[0]),
        .O(leds[0]));
  LUT5 #(
    .INIT(32'hFE0E3202)) 
    \leds[1]_INST_0 
       (.I0(settings_out[1]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(guess[1]),
        .I4(ruleta_out[1]),
        .O(leds[1]));
  LUT5 #(
    .INIT(32'hFE0E3202)) 
    \leds[2]_INST_0 
       (.I0(settings_out[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(guess[2]),
        .I4(ruleta_out[2]),
        .O(leds[2]));
  LUT5 #(
    .INIT(32'hFE0E3202)) 
    \leds[3]_INST_0 
       (.I0(settings_out[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(guess[3]),
        .I4(ruleta_out[3]),
        .O(leds[3]));
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
