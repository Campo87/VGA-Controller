vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz_clk_wiz.v" \
"../../../../VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz.v" \


vlog -work xil_defaultlib \
"glbl.v"
