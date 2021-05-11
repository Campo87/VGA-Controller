// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May  7 14:08:46 2021
// Host        : DESKTOP-5TVNUIJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_vga_31_5mhz_stub.v
// Design      : clk_vga_31_5mhz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_out_31_5mhz, reset, clk_in_100mhz)
/* synthesis syn_black_box black_box_pad_pin="clk_out_31_5mhz,reset,clk_in_100mhz" */;
  output clk_out_31_5mhz;
  input reset;
  input clk_in_100mhz;
endmodule
