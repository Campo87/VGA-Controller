-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../VGA-Controller.srcs/sources_1/ip/vga_pixel_clk/vga_pixel_clk_clk_wiz.v" \
  "../../../../VGA-Controller.srcs/sources_1/ip/vga_pixel_clk/vga_pixel_clk.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

