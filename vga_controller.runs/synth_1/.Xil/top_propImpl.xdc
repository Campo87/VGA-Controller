set_property SRC_FILE_INFO {cfile:c:/Xilinx/Vivado/projects/vga_controller/vga_controller.srcs/sources_1/ip/clk_div/clk_div/clk_div_in_context.xdc rfile:../../../vga_controller.srcs/sources_1/ip/clk_div/clk_div/clk_div_in_context.xdc id:1 order:EARLY scoped_inst:VGA_clk_25Mhz} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xilinx/Vivado/projects/vga_controller/vga_controller.srcs/constrs_1/new/constr.xdc rfile:../../../vga_controller.srcs/constrs_1/new/constr.xdc id:2} [current_design]
current_instance VGA_clk_25Mhz
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 15.000 30.000} [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W5 [get_ports clk]
set_property src_info {type:XDC file:2 line:236 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G19 [get_ports {vgaRed[0]}]
set_property src_info {type:XDC file:2 line:238 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H19 [get_ports {vgaRed[1]}]
set_property src_info {type:XDC file:2 line:240 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J19 [get_ports {vgaRed[2]}]
set_property src_info {type:XDC file:2 line:242 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N19 [get_ports {vgaRed[3]}]
set_property src_info {type:XDC file:2 line:245 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N18 [get_ports {vgaBlue[0]}]
set_property src_info {type:XDC file:2 line:247 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L18 [get_ports {vgaBlue[1]}]
set_property src_info {type:XDC file:2 line:249 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K18 [get_ports {vgaBlue[2]}]
set_property src_info {type:XDC file:2 line:251 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J18 [get_ports {vgaBlue[3]}]
set_property src_info {type:XDC file:2 line:254 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J17 [get_ports {vgaGreen[0]}]
set_property src_info {type:XDC file:2 line:256 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H17 [get_ports {vgaGreen[1]}]
set_property src_info {type:XDC file:2 line:258 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G17 [get_ports {vgaGreen[2]}]
set_property src_info {type:XDC file:2 line:260 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D17 [get_ports {vgaGreen[3]}]
set_property src_info {type:XDC file:2 line:263 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P19 [get_ports Hsync]
set_property src_info {type:XDC file:2 line:266 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R19 [get_ports Vsync]