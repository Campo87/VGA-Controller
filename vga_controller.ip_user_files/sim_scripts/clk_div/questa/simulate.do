onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib clk_div_opt

do {wave.do}

view wave
view structure
view signals

do {clk_div.udo}

run -all

quit -force
