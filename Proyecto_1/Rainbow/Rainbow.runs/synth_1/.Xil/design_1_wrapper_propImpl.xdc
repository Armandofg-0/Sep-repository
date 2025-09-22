set_property SRC_FILE_INFO {cfile:c:/Users/Karlsen/Desktop/SEP/Rainbow/Rainbow.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_2/design_1_clk_wiz_2/design_1_clk_wiz_2_in_context.xdc rfile:../../../Rainbow.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_2/design_1_clk_wiz_2/design_1_clk_wiz_2_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/clk_wiz} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/Karlsen/Desktop/SEP/Rainbow/Rainbow.srcs/constrs_1/imports/Downloads/Zybo-Z7-Master.xdc rfile:../../../Rainbow.srcs/constrs_1/imports/Downloads/Zybo-Z7-Master.xdc id:2} [current_design]
current_instance design_1_i/clk_wiz
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 8.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 1.000 2.000} [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { sys_clk }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { reset_rtl }]; #IO_L12N_T1_MRCC_35 Sch=btn[0]
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { rgb_R }]; #IO_L18P_T2_34 Sch=led6_r
set_property src_info {type:XDC file:2 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { rgb_G }]; #IO_L6N_T0_VREF_35 Sch=led6_g
set_property src_info {type:XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { rgb_B }]; #IO_L8P_T1_AD10P_35 Sch=led6_b
