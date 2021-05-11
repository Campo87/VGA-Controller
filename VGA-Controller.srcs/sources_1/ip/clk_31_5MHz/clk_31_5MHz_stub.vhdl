-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri May  7 14:02:37 2021
-- Host        : DESKTOP-5TVNUIJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/James/Documents/GitHub/VGA-Controller/VGA-Controller.srcs/sources_1/ip/clk_31_5MHz/clk_31_5MHz_stub.vhdl
-- Design      : clk_31_5MHz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_31_5MHz is
  Port ( 
    clk_VGA : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in_100MHz : in STD_LOGIC
  );

end clk_31_5MHz;

architecture stub of clk_31_5MHz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_VGA,reset,clk_in_100MHz";
begin
end;
