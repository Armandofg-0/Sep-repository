# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "clk"

}

proc update_PARAM_VALUE.INIT_CYCLES { PARAM_VALUE.INIT_CYCLES } {
	# Procedure called to update INIT_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INIT_CYCLES { PARAM_VALUE.INIT_CYCLES } {
	# Procedure called to validate INIT_CYCLES
	return true
}

proc update_PARAM_VALUE.clk { PARAM_VALUE.clk } {
	# Procedure called to update clk when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk { PARAM_VALUE.clk } {
	# Procedure called to validate clk
	return true
}


proc update_MODELPARAM_VALUE.INIT_CYCLES { MODELPARAM_VALUE.INIT_CYCLES PARAM_VALUE.INIT_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INIT_CYCLES}] ${MODELPARAM_VALUE.INIT_CYCLES}
}

