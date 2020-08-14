`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// 
// Create Date: 08/14/2020 10:32:27 AM
// Design Name: VGA Controller
// Module Name: top
// Project Name: vga_controller
// Target Devices: Basys_3 FPGA
// Description: VGA controller for 640x480 16-bit RGB color depth.
// Timing information used in this project can be found at this link
// http://tinyvga.com/vga-timing/640x480@60Hz
// Dependencies: horizontal.v, vertical.v, 25MHz clock
//////////////////////////////////////////////////////////////////////////////////

module top(
    output wire       Hsync,
    output wire       Vsync,
    output wire [3:0] vgaRed,
    output wire [3:0] vgaGreen,
    output wire [3:0] vgaBlue,
    input  wire       clk
);

wire        clk_25MHz;
wire        en_vert_count;
wire [15:0] horiz_count;
wire [15:0] vert_count;

// 25MHz stepdown clock
clk_div VGA_clk_25Mhz(
    .clk_in1 (clk),
    .clk_out1(clk_25MHz)
);

// Horizontal Counter
horizontal VGA_horiz(
    .horiz_counter(horiz_count),
    .en_vert_count(en_vert_count),
    .clk_25MHz(clk_25MHz)
);

// Vertical Counter
vertical(
    .vert_counter(vert_count),
    .en_vert_count(en_vert_count),
    .clk_25MHz(clk_25MHz)
);

// Sync pulses
assign hsync    =  (horiz_count < 96) ? 1'b1 : 1'b0;
assign vsync    =  (vert_count  < 2)  ? 1'b1 : 1'b0;
assign vgaRed   =  (horiz_count < 784 && horiz_count > 143 && vert_count < 515 && vert_count > 34) ? 4'hF : 4'h0;
assign vgaGreen =  (horiz_count < 784 && horiz_count > 143 && vert_count < 515 && vert_count > 34) ? 4'hF : 4'h0;
assign vgaBlue  =  (horiz_count < 784 && horiz_count > 143 && vert_count < 515 && vert_count > 34) ? 4'hF : 4'h0;

endmodule
