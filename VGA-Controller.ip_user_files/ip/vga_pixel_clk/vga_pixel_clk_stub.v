// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 10 19:38:21 2021
// Host        : DESKTOP-5TVNUIJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/James/Documents/GitHub/VGA-Controller/VGA-Controller.srcs/sources_1/ip/vga_pixel_clk/vga_pixel_clk_stub.v
// Design      : vga_pixel_clk
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module vga_pixel_clk(pixel_clk_o, reset, clk_in_100mhz_i)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk_o,reset,clk_in_100mhz_i" */;
  output pixel_clk_o;
  input reset;
  input clk_in_100mhz_i;
endmodule
