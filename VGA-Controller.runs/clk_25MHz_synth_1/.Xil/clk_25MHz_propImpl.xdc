set_property SRC_FILE_INFO {cfile:c:/Users/Campo/Documents/VGA-Controller/VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz.xdc rfile:../../../VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in]] 0.1