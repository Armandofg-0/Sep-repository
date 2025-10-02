// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Oct  2 13:22:04 2025
// Host        : DESKTOP-7OBFH0V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_apuesta_0_0_sim_netlist.v
// Design      : design_1_apuesta_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apuesta
   (guess,
    sw,
    state,
    clk);
  output [3:0]guess;
  input [3:0]sw;
  input [1:0]state;
  input clk;

  wire clk;
  wire [3:0]guess;
  wire guess16_out;
  wire \guess[1]_i_1_n_0 ;
  wire \guess[2]_i_1_n_0 ;
  wire \guess[3]_i_1_n_0 ;
  wire \guess[3]_i_2_n_0 ;
  wire \guess[3]_i_3_n_0 ;
  wire [1:0]state;
  wire [3:0]sw;
  wire sw0_r;
  wire sw1_r;
  wire sw2_r;
  wire sw2_r_i_1_n_0;
  wire sw3_r_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \guess[0]_i_1 
       (.I0(sw[0]),
        .I1(sw0_r),
        .O(guess16_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \guess[1]_i_1 
       (.I0(sw1_r),
        .I1(sw[1]),
        .I2(sw0_r),
        .I3(sw[0]),
        .O(\guess[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4404440400004404)) 
    \guess[2]_i_1 
       (.I0(sw2_r),
        .I1(sw[2]),
        .I2(sw[0]),
        .I3(sw0_r),
        .I4(sw[1]),
        .I5(sw1_r),
        .O(\guess[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44440400)) 
    \guess[3]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(sw0_r),
        .I3(sw[0]),
        .I4(\guess[3]_i_3_n_0 ),
        .O(\guess[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \guess[3]_i_2 
       (.I0(sw1_r),
        .I1(sw[1]),
        .I2(sw[2]),
        .I3(sw2_r),
        .I4(sw[0]),
        .I5(sw0_r),
        .O(\guess[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \guess[3]_i_3 
       (.I0(sw1_r),
        .I1(sw[1]),
        .I2(sw[3]),
        .I3(sw3_r_reg_n_0),
        .I4(sw[2]),
        .I5(sw2_r),
        .O(\guess[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guess_reg[0] 
       (.C(clk),
        .CE(\guess[3]_i_1_n_0 ),
        .D(guess16_out),
        .Q(guess[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \guess_reg[1] 
       (.C(clk),
        .CE(\guess[3]_i_1_n_0 ),
        .D(\guess[1]_i_1_n_0 ),
        .Q(guess[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \guess_reg[2] 
       (.C(clk),
        .CE(\guess[3]_i_1_n_0 ),
        .D(\guess[2]_i_1_n_0 ),
        .Q(guess[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \guess_reg[3] 
       (.C(clk),
        .CE(\guess[3]_i_1_n_0 ),
        .D(\guess[3]_i_2_n_0 ),
        .Q(guess[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sw0_r_reg
       (.C(clk),
        .CE(sw2_r_i_1_n_0),
        .D(sw[0]),
        .Q(sw0_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sw1_r_reg
       (.C(clk),
        .CE(sw2_r_i_1_n_0),
        .D(sw[1]),
        .Q(sw1_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    sw2_r_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(sw2_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sw2_r_reg
       (.C(clk),
        .CE(sw2_r_i_1_n_0),
        .D(sw[2]),
        .Q(sw2_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sw3_r_reg
       (.C(clk),
        .CE(sw2_r_i_1_n_0),
        .D(sw[3]),
        .Q(sw3_r_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_apuesta_0_0,apuesta,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "apuesta,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    state,
    sw,
    guess);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input [1:0]state;
  input [3:0]sw;
  output [3:0]guess;

  wire clk;
  wire [3:0]guess;
  wire [1:0]state;
  wire [3:0]sw;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apuesta U0
       (.clk(clk),
        .guess(guess),
        .state(state),
        .sw(sw));
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
