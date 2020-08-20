-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Aug 19 16:36:03 2020
-- Host        : Campo-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Campo/Documents/VGA-Controller/VGA-Controller.srcs/sources_1/ip/clk_25MHz/clk_25MHz_stub.vhdl
-- Design      : clk_25MHz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_25MHz is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );

end clk_25MHz;

architecture stub of clk_25MHz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in";
begin
end;
