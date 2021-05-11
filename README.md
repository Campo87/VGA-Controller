# VGA-Controller
VGA controller written in verilog that supports the [VESA Signal 1280x1024 @60Hz](http://tinyvga.com/vga-timing/1280x1024@60Hz) timing format for the Basys3 FPGA development board. Source files can be found in the [VGA-Controller.srcs](VGA-Controller.srcs) folder. As of now, the top file provides the logic to display a white screen. Plans are to various display patterns in verilog and eventually utilize the microblaze soft-processor to generate video data on a software level.