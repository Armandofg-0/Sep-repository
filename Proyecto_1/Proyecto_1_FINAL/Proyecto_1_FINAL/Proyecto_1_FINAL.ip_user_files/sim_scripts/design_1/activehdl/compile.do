vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/c_reg_fd_v12_0_6
vlib activehdl/c_mux_bit_v12_0_6
vlib activehdl/c_shift_ram_v12_0_14
vlib activehdl/dist_mem_gen_v8_0_13
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/lib_bmg_v1_0_13
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_traffic_gen_v3_0_7
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_21
vlib activehdl/axi_vip_v1_1_7

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 activehdl/c_reg_fd_v12_0_6
vmap c_mux_bit_v12_0_6 activehdl/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 activehdl/c_shift_ram_v12_0_14
vmap dist_mem_gen_v8_0_13 activehdl/dist_mem_gen_v8_0_13
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 activehdl/lib_bmg_v1_0_13
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_traffic_gen_v3_0_7 activehdl/axi_traffic_gen_v3_0_7
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_21 activehdl/axi_register_slice_v2_1_21
vmap axi_vip_v1_1_7 activehdl/axi_vip_v1_1_7

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ipshared/942e/src/led_controller.vhd" \
"../../../bd/design_1/ip/design_1_led_controller_0_0/sim/design_1_led_controller_0_0.vhd" \
"../../../bd/design_1/ipshared/07c1/src/state_machine.vhd" \
"../../../bd/design_1/ip/design_1_state_machine_0_0/sim/design_1_state_machine_0_0.vhd" \
"../../../bd/design_1/ipshared/8cef/src/clk_manager.vhd" \
"../../../bd/design_1/ip/design_1_clk_manager_0_0/sim/design_1_clk_manager_0_0.vhd" \
"../../../bd/design_1/ipshared/bff5/src/apuesta.vhd" \
"../../../bd/design_1/ip/design_1_apuesta_0_0/sim/design_1_apuesta_0_0.vhd" \
"../../../bd/design_1/ipshared/2402/src/settings_menu.vhd" \
"../../../bd/design_1/ip/design_1_settings_0_0/sim/design_1_settings_0_0.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ip/design_1_ruleta_0_0/src/c_shift_ram_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ip/design_1_ruleta_0_0/src/c_shift_ram_0/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_6 -93 \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ip/design_1_ruleta_0_0/src/c_shift_ram_0/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_14 -93 \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ip/design_1_ruleta_0_0/src/c_shift_ram_0/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_ruleta_0_0/src/c_shift_ram_0/sim/c_shift_ram_0.vhd" \
"../../../bd/design_1/ipshared/4ec8/src/ruleta.vhd" \
"../../../bd/design_1/Modules/rotacion_dificl.vhd" \
"../../../bd/design_1/Modules/rotacion_facil.vhd" \
"../../../bd/design_1/Modules/rotacion_medio.vhd" \
"../../../bd/design_1/ip/design_1_ruleta_0_0/sim/design_1_ruleta_0_0.vhd" \
"../../../bd/design_1/ipshared/84ec/src/debouncer.vhd" \
"../../../bd/design_1/ip/design_1_debouncer_0_0/sim/design_1_debouncer_0_0.vhd" \
"../../../bd/design_1/ip/design_1_debouncer_1_0/sim/design_1_debouncer_1_0.vhd" \
"../../../bd/design_1/ip/design_1_debouncer_2_0/sim/design_1_debouncer_2_0.vhd" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13 -93 \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_traffic_gen_v3_0_7 -93 \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/axi_traffic_gen_v3_0_rfs.vhd" \

vlog -work axi_traffic_gen_v3_0_7  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_traffic_gen_0_0/sim/design_1_axi_traffic_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_axi_traffic_gen_1_0/sim/design_1_axi_traffic_gen_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ipshared/b7e5/hdl/rgb_rainbow_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/b7e5/hdl/rgb_rainbow_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_rgb_rainbow_0_1/sim/design_1_rgb_rainbow_0_1.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/053f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/7af8/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_clk_125M_0/sim/design_1_rst_clk_125M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_a878_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_a878_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_a878_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_a878_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_a878_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_a878_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_a878_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_a878_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_a878_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_a878_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_a878_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_11/sim/bd_a878_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_12/sim/bd_a878_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/f2df/hdl/src/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../Proyecto_1_FINAL.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/sim/bd_a878.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/sim/design_1_axi_smc_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_vio_0_0/sim/design_1_vio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

