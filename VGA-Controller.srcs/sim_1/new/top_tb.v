`timescale 1ns / 1ps

module top_tb;

reg        clk = 0;
wire       Hsync;
wire       Vsync;
wire [3:0] vgaRed;
wire [3:0] vgaGreen;
wire [3:0] vgaBlue;

top UUT(Hsync,Vsync,vgaRed,vgaGreen,vgaBlue,clk);

always #5 clk = ~clk;
    
endmodule
