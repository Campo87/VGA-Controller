vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../ipstatic" \
"../../../../VGA-Controller.srcs/sources_1/ip/vga_pixel_clk/vga_pixel_clk_clk_wiz.v" \
"../../../../VGA-Controller.srcs/sources_1/ip/vga_pixel_clk/vga_pixel_clk.v" \

vlog -work xil_defaultlib \
"glbl.v"

