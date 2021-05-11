-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May 10 19:38:21 2021
-- Host        : DESKTOP-5TVNUIJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/James/Documents/GitHub/VGA-Controller/VGA-Controller.srcs/sources_1/ip/vga_pixel_clk/vga_pixel_clk_stub.vhdl
-- Design      : vga_pixel_clk
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_pixel_clk is
  Port ( 
    pixel_clk_o : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in_100mhz_i : in STD_LOGIC
  );

end vga_pixel_clk;

architecture stub of vga_pixel_clk is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_clk_o,reset,clk_in_100mhz_i";
begin
end;
