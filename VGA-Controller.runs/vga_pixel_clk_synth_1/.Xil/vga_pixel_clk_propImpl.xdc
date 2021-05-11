set_property SRC_FILE_INFO {cfile:c:/Users/James/Documents/GitHub/VGA-Controller/VGA-Controller.srcs/sources_1/ip/vga_pixel_clk/vga_pixel_clk.xdc rfile:../../../VGA-Controller.srcs/sources_1/ip/vga_pixel_clk/vga_pixel_clk.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in_100mhz_i]] 0.1
