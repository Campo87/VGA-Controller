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
 output wire       Hsync,
 output wire       Vsync,
 output wire [3:0] vgaRed,
 output wire [3:0] vgaGreen,
 output wire [3:0] vgaBlue,
 input  wire       clk
);

wire [10:0]  line_count;
wire [10:0]  frame_count;
wire        vga_clk;

clk_wiz_0 vga_Clk(
    .clk_in(clk),
    .clk_out(vga_clk)
);

sync_gen vga_Sync(
    .hsync(Hsync),
    .vsync(Vsync),
    .active(active),
    .line_count(line_count),
    .frame_count(frame_count),
    .clk(vga_clk)
);

assign vgaRed   = (active) ? 4'hF : 4'h0;
assign vgaGreen = (active) ? 4'hF : 4'h0;
assign vgaBlue  = (active) ? 4'hF : 4'h0;
    
endmodule
