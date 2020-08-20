onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib clk_25MHz_opt

do {wave.do}

view wave
view structure
view signals

do {clk_25MHz.udo}

run -all

quit -force
