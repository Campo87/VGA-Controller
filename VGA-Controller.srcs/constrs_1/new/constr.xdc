##Buttons
##Reset
set_property PACKAGE_PIN U18 [get_ports rst_i]
set_property IOSTANDARD LVCMOS33 [get_ports rst_i]

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk_in_100mhz_i]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in_100mhz_i]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_in_100mhz_i]

##VGA Connectors
##HSYNC
set_property PACKAGE_PIN P19 [get_ports h_sync_o]
set_property IOSTANDARD LVCMOS33 [get_ports h_sync_o]
##VSYNC
set_property PACKAGE_PIN R19 [get_ports v_sync_o]
set_property IOSTANDARD LVCMOS33 [get_ports v_sync_o]
##RED
set_property PACKAGE_PIN G19 [get_ports {vga_red_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red_o[0]}]
set_property PACKAGE_PIN H19 [get_ports {vga_red_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red_o[1]}]
set_property PACKAGE_PIN J19 [get_ports {vga_red_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red_o[2]}]
set_property PACKAGE_PIN N19 [get_ports {vga_red_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red_o[3]}]
##Green
set_property PACKAGE_PIN J17 [get_ports {vga_green_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green_o[0]}]
set_property PACKAGE_PIN H17 [get_ports {vga_green_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green_o[1]}]
set_property PACKAGE_PIN G17 [get_ports {vga_green_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green_o[2]}]
set_property PACKAGE_PIN D17 [get_ports {vga_green_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green_o[3]}]
##Blue
set_property PACKAGE_PIN N18 [get_ports {vga_blue_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue_o[0]}]
set_property PACKAGE_PIN L18 [get_ports {vga_blue_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue_o[1]}]
set_property PACKAGE_PIN K18 [get_ports {vga_blue_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue_o[2]}]
set_property PACKAGE_PIN J18 [get_ports {vga_blue_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue_o[3]}]
