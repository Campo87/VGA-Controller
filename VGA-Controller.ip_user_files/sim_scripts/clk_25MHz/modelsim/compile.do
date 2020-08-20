vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+../../../ipstatic" \
"../../../../VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz_clk_wiz.v" \
"../../../../VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz.v" \


vlog -work xil_defaultlib \
"glbl.v"

