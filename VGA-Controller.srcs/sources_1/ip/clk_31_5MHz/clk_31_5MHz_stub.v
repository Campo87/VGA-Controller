// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May  7 14:02:37 2021
// Host        : DESKTOP-5TVNUIJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/James/Documents/GitHub/VGA-Controller/VGA-Controller.srcs/sources_1/ip/clk_31_5MHz/clk_31_5MHz_stub.v
// Design      : clk_31_5MHz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_31_5MHz(clk_VGA, reset, clk_in_100MHz)
/* synthesis syn_black_box black_box_pad_pin="clk_VGA,reset,clk_in_100MHz" */;
  output clk_VGA;
  input reset;
  input clk_in_100MHz;
endmodule
