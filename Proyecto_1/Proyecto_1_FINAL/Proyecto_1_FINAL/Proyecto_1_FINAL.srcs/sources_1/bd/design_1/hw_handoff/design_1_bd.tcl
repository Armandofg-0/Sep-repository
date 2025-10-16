
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-10:part0:1.2 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set btn_0 [ create_bd_port -dir I btn_0 ]
  set btn_1 [ create_bd_port -dir I btn_1 ]
  set btn_2 [ create_bd_port -dir I btn_2 ]
  set btn_3 [ create_bd_port -dir I btn_3 ]
  set clk [ create_bd_port -dir I -type clk -freq_hz 125000000 clk ]
  set leds [ create_bd_port -dir O -from 3 -to 0 leds ]
  set rgb_B [ create_bd_port -dir O rgb_B ]
  set rgb_G [ create_bd_port -dir O rgb_G ]
  set rgb_R [ create_bd_port -dir O rgb_R ]
  set sw [ create_bd_port -dir I -from 3 -to 0 sw ]

  # Create instance: apuesta_0, and set properties
  set apuesta_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:apuesta:1.0 apuesta_0 ]

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $axi_smc

  # Create instance: axi_smc_1, and set properties
  set axi_smc_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc_1 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $axi_smc_1

  # Create instance: axi_traffic_gen_0, and set properties
  set axi_traffic_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_traffic_gen:3.0 axi_traffic_gen_0 ]
  set_property -dict [ list \
   CONFIG.C_ATG_MIF_DATA_DEPTH {64} \
   CONFIG.C_ATG_MODE {AXI4-Lite} \
   CONFIG.C_ATG_SYSINIT_MODES {System_Test} \
   CONFIG.C_ATG_SYSTEM_CMD_MAX_RETRY {2147483647} \
   CONFIG.C_ATG_SYSTEM_INIT_ADDR_MIF {../../../../../../../COE_Files/addr.coe} \
   CONFIG.C_ATG_SYSTEM_INIT_CTRL_MIF {../../../../../../../COE_Files/ctrl.coe} \
   CONFIG.C_ATG_SYSTEM_INIT_DATA_MIF {../../../../../../../COE_Files/data.coe} \
   CONFIG.C_ATG_SYSTEM_INIT_MASK_MIF {../../../../../../../COE_Files/mask.coe} \
 ] $axi_traffic_gen_0

  # Create instance: axi_traffic_gen_1, and set properties
  set axi_traffic_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_traffic_gen:3.0 axi_traffic_gen_1 ]

  # Create instance: axi_traffic_gen_2, and set properties
  set axi_traffic_gen_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_traffic_gen:3.0 axi_traffic_gen_2 ]
  set_property -dict [ list \
   CONFIG.C_ATG_MODE {AXI4-Lite} \
   CONFIG.C_ATG_SYSINIT_MODES {System_Test} \
   CONFIG.C_ATG_SYSTEM_CMD_MAX_RETRY {2147483647} \
   CONFIG.C_ATG_SYSTEM_INIT_ADDR_MIF {../../../../../../../COE_Files_2/addr.coe} \
   CONFIG.C_ATG_SYSTEM_INIT_CTRL_MIF {../../../../../../../COE_Files_2/ctrl.coe} \
   CONFIG.C_ATG_SYSTEM_INIT_DATA_MIF {../../../../../../../COE_Files_2/data.coe} \
   CONFIG.C_ATG_SYSTEM_INIT_MASK_MIF {../../../../../../../COE_Files_2/mask.coe} \
 ] $axi_traffic_gen_2

  # Create instance: axi_traffic_gen_2_axi_periph, and set properties
  set axi_traffic_gen_2_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_traffic_gen_2_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $axi_traffic_gen_2_axi_periph

  # Create instance: clk_manager_0, and set properties
  set clk_manager_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:clk_manager:1.0 clk_manager_0 ]

  # Create instance: debouncer_0, and set properties
  set debouncer_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:debouncer:1.0 debouncer_0 ]

  # Create instance: debouncer_1, and set properties
  set debouncer_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:debouncer:1.0 debouncer_1 ]

  # Create instance: debouncer_2, and set properties
  set debouncer_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:debouncer:1.0 debouncer_2 ]

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {8} \
   CONFIG.C_PROBE0_WIDTH {2} \
   CONFIG.C_PROBE1_WIDTH {4} \
   CONFIG.C_PROBE2_WIDTH {4} \
   CONFIG.C_PROBE3_WIDTH {4} \
   CONFIG.C_PROBE4_WIDTH {4} \
   CONFIG.C_PROBE5_WIDTH {4} \
   CONFIG.C_PROBE7_WIDTH {2} \
 ] $ila_0

  # Create instance: led_controller_0, and set properties
  set led_controller_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:led_controller:1.0 led_controller_0 ]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
 ] [get_bd_pins /led_controller_0/clk]

  # Create instance: result_0, and set properties
  set result_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:result:1.0 result_0 ]

  # Create instance: rgb_alarm_0, and set properties
  set rgb_alarm_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:rgb_alarm:1.0 rgb_alarm_0 ]

  # Create instance: rgb_controller_0, and set properties
  set rgb_controller_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:rgb_controller:1.0 rgb_controller_0 ]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
 ] [get_bd_pins /rgb_controller_0/clk]

  # Create instance: rgb_rainbow_0, and set properties
  set rgb_rainbow_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:rgb_rainbow:1.0 rgb_rainbow_0 ]

  # Create instance: rst_clk_125M, and set properties
  set rst_clk_125M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_125M ]

  # Create instance: ruleta_0, and set properties
  set ruleta_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ruleta:1.0 ruleta_0 ]

  # Create instance: settings_0, and set properties
  set settings_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:settings:1.0 settings_0 ]

  # Create instance: state_machine_0, and set properties
  set state_machine_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:state_machine:1.0 state_machine_0 ]

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
 ] $vio_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_smc_1_M00_AXI [get_bd_intf_pins axi_smc_1/M00_AXI] [get_bd_intf_pins rgb_rainbow_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins axi_traffic_gen_1/S_AXI]
  connect_bd_intf_net -intf_net axi_traffic_gen_0_M_AXI_LITE_CH1 [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins axi_traffic_gen_0/M_AXI_LITE_CH1]
  connect_bd_intf_net -intf_net axi_traffic_gen_1_M_AXI [get_bd_intf_pins axi_smc_1/S00_AXI] [get_bd_intf_pins axi_traffic_gen_1/M_AXI]
  connect_bd_intf_net -intf_net axi_traffic_gen_2_M_AXI_LITE_CH1 [get_bd_intf_pins axi_traffic_gen_2/M_AXI_LITE_CH1] [get_bd_intf_pins axi_traffic_gen_2_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net axi_traffic_gen_2_axi_periph_M00_AXI [get_bd_intf_pins axi_traffic_gen_2_axi_periph/M00_AXI] [get_bd_intf_pins rgb_alarm_0/S00_AXI]

  # Create port connections
  connect_bd_net -net apuesta_0_guess [get_bd_pins apuesta_0/guess] [get_bd_pins ila_0/probe2] [get_bd_pins led_controller_0/guess] [get_bd_pins result_0/apuesta]
  connect_bd_net -net btn_0_1 [get_bd_ports btn_0] [get_bd_pins debouncer_0/button]
  connect_bd_net -net btn_1_1 [get_bd_ports btn_1] [get_bd_pins debouncer_2/button]
  connect_bd_net -net btn_2_1 [get_bd_ports btn_2] [get_bd_pins debouncer_1/button]
  connect_bd_net -net btn_3_0_1 [get_bd_ports btn_3] [get_bd_pins clk_manager_0/btn_3]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins apuesta_0/clk] [get_bd_pins axi_smc/aclk] [get_bd_pins axi_smc_1/aclk] [get_bd_pins axi_traffic_gen_0/s_axi_aclk] [get_bd_pins axi_traffic_gen_1/s_axi_aclk] [get_bd_pins axi_traffic_gen_2/s_axi_aclk] [get_bd_pins axi_traffic_gen_2_axi_periph/ACLK] [get_bd_pins axi_traffic_gen_2_axi_periph/M00_ACLK] [get_bd_pins axi_traffic_gen_2_axi_periph/S00_ACLK] [get_bd_pins clk_manager_0/clk] [get_bd_pins debouncer_0/clk] [get_bd_pins debouncer_1/clk] [get_bd_pins debouncer_2/clk] [get_bd_pins ila_0/clk] [get_bd_pins led_controller_0/clk] [get_bd_pins rgb_alarm_0/clk] [get_bd_pins rgb_alarm_0/s00_axi_aclk] [get_bd_pins rgb_controller_0/clk] [get_bd_pins rgb_rainbow_0/clk] [get_bd_pins rgb_rainbow_0/s00_axi_aclk] [get_bd_pins rst_clk_125M/slowest_sync_clk] [get_bd_pins ruleta_0/clk] [get_bd_pins settings_0/clk] [get_bd_pins state_machine_0/clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net clk_manager_0_special_clk_out [get_bd_pins clk_manager_0/special_clk_out] [get_bd_pins ruleta_0/special_clk_out]
  connect_bd_net -net clk_manager_0_stop [get_bd_pins clk_manager_0/stop] [get_bd_pins ruleta_0/stop] [get_bd_pins state_machine_0/stop]
  connect_bd_net -net debouncer_0_debounced_pulse [get_bd_pins debouncer_0/debounced_pulse] [get_bd_pins state_machine_0/btn_0]
  connect_bd_net -net debouncer_1_debounced_pulse [get_bd_pins debouncer_1/debounced_pulse] [get_bd_pins settings_0/btn_2]
  connect_bd_net -net debouncer_2_debounced_pulse [get_bd_pins debouncer_2/debounced_pulse] [get_bd_pins settings_0/btn_1]
  connect_bd_net -net led_controller_0_leds [get_bd_ports leds] [get_bd_pins ila_0/probe1] [get_bd_pins led_controller_0/leds]
  connect_bd_net -net result_0_win [get_bd_pins result_0/win] [get_bd_pins rgb_controller_0/win]
  connect_bd_net -net rgb_alarm_0_rgb_R [get_bd_pins rgb_alarm_0/rgb_R] [get_bd_pins rgb_controller_0/rgb_R_evil]
  connect_bd_net -net rgb_controller_0_rgb_B [get_bd_ports rgb_B] [get_bd_pins rgb_controller_0/rgb_B]
  connect_bd_net -net rgb_controller_0_rgb_G [get_bd_ports rgb_G] [get_bd_pins rgb_controller_0/rgb_G]
  connect_bd_net -net rgb_controller_0_rgb_R [get_bd_ports rgb_R] [get_bd_pins rgb_controller_0/rgb_R]
  connect_bd_net -net rgb_rainbow_0_rgb_B [get_bd_pins rgb_controller_0/rgb_B_rainbow] [get_bd_pins rgb_rainbow_0/rgb_B]
  connect_bd_net -net rgb_rainbow_0_rgb_G [get_bd_pins rgb_controller_0/rgb_G_rainbow] [get_bd_pins rgb_rainbow_0/rgb_G]
  connect_bd_net -net rgb_rainbow_0_rgb_R [get_bd_pins rgb_controller_0/rgb_R_rainbow] [get_bd_pins rgb_rainbow_0/rgb_R]
  connect_bd_net -net rst_clk_125M_peripheral_aresetn [get_bd_pins axi_smc/aresetn] [get_bd_pins axi_smc_1/aresetn] [get_bd_pins axi_traffic_gen_0/s_axi_aresetn] [get_bd_pins axi_traffic_gen_1/s_axi_aresetn] [get_bd_pins axi_traffic_gen_2/s_axi_aresetn] [get_bd_pins axi_traffic_gen_2_axi_periph/ARESETN] [get_bd_pins axi_traffic_gen_2_axi_periph/M00_ARESETN] [get_bd_pins axi_traffic_gen_2_axi_periph/S00_ARESETN] [get_bd_pins rgb_alarm_0/s00_axi_aresetn] [get_bd_pins rgb_rainbow_0/s00_axi_aresetn] [get_bd_pins rst_clk_125M/peripheral_aresetn]
  connect_bd_net -net ruleta_0_dbg_ram_din [get_bd_pins ila_0/probe4] [get_bd_pins ruleta_0/dbg_ram_din]
  connect_bd_net -net ruleta_0_dbg_ram_q [get_bd_pins ila_0/probe5] [get_bd_pins ruleta_0/dbg_ram_q]
  connect_bd_net -net ruleta_0_dbg_rot_enable [get_bd_pins ila_0/probe6] [get_bd_pins ruleta_0/dbg_rot_enable]
  connect_bd_net -net ruleta_0_dbg_sel_delay [get_bd_pins ila_0/probe7] [get_bd_pins ruleta_0/dbg_sel_delay]
  connect_bd_net -net ruleta_0_result [get_bd_pins ila_0/probe3] [get_bd_pins led_controller_0/ruleta_out] [get_bd_pins result_0/result] [get_bd_pins ruleta_0/result]
  connect_bd_net -net settings_0_difficulty [get_bd_pins clk_manager_0/difficulty] [get_bd_pins rgb_controller_0/difficulty] [get_bd_pins ruleta_0/difficulty] [get_bd_pins settings_0/difficulty]
  connect_bd_net -net settings_0_led [get_bd_pins led_controller_0/settings_out] [get_bd_pins settings_0/led]
  connect_bd_net -net state_machine_0_state [get_bd_pins apuesta_0/state] [get_bd_pins clk_manager_0/state] [get_bd_pins ila_0/probe0] [get_bd_pins led_controller_0/state] [get_bd_pins rgb_controller_0/state] [get_bd_pins ruleta_0/state] [get_bd_pins settings_0/state] [get_bd_pins state_machine_0/state]
  connect_bd_net -net sw_0_1 [get_bd_ports sw] [get_bd_pins apuesta_0/sw]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins rst_clk_125M/ext_reset_in] [get_bd_pins vio_0/probe_out0]

  # Create address segments
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_traffic_gen_0/Reg1] [get_bd_addr_segs axi_traffic_gen_1/S_AXI/Reg0] -force
  assign_bd_address -offset 0x76000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_traffic_gen_1/Data] [get_bd_addr_segs rgb_rainbow_0/S00_AXI/S00_AXI_mem] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_traffic_gen_2/Reg1] [get_bd_addr_segs rgb_alarm_0/S00_AXI/S00_AXI_reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


