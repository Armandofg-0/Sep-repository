# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "INIT_CYCLES" -parent ${Page_0}


}

proc update_PARAM_VALUE.INIT_CYCLES { PARAM_VALUE.INIT_CYCLES } {
	# Procedure called to update INIT_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INIT_CYCLES { PARAM_VALUE.INIT_CYCLES } {
	# Procedure called to validate INIT_CYCLES
	return true
}


proc update_MODELPARAM_VALUE.INIT_CYCLES { MODELPARAM_VALUE.INIT_CYCLES PARAM_VALUE.INIT_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INIT_CYCLES}] ${MODELPARAM_VALUE.INIT_CYCLES}
}

