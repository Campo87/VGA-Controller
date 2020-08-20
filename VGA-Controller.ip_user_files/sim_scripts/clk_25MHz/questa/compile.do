vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../ipstatic" \
"../../../../VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz_clk_wiz.v" \
"../../../../VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz.v" \


vlog -work xil_defaultlib \
"glbl.v"

