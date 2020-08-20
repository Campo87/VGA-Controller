`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2020 03:59:49 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    output Hsync,
    output Vsync,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    input clk
);
   
wire        h_active;
wire        h_fp;
wire        h_bp;
wire [3:0]  horiz_count;
wire        v_active;
wire        v_fp;
wire        v_bp;
wire [3:0]  vert_count;
wire        vga_clk;

clk_25MHz vga_Clk(
    .clk_in(clk),
    .clk_out1(vga_clk)
);

sync_gen vga_Sync(
    .hsync(Hsync),
    .h_active(h_active),
    .h_fp(h_fp),
    .h_bp(h_bp),
    .horiz_count(horiz_count),
    .vsync(Vsync),
    .v_active(v_active),
    .v_fp(v_fp),
    .v_bp(v_bp),
    .vert_count(vert_count),
    .clk(vga_clk)
);

assign vgaRed = (h_active & v_active)  ? 4'hF : 4'h0;
assign vgaGreen = (h_active & v_active)? 4'hF : 4'h0;
assign vgaBlue = (h_active & v_active) ? 4'hF : 4'h0;
    
endmodule
