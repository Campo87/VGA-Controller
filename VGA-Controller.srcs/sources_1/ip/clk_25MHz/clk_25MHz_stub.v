// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Aug 19 16:36:03 2020
// Host        : Campo-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Campo/Documents/VGA-Controller/VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz_stub.v
// Design      : clk_25MHz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_25MHz(clk_out1, clk_in)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_in" */;
  output clk_out1;
  input clk_in;
endmodule
