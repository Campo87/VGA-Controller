`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// Create Date: 09/02/2020 07:05:45 PM
// Module Name: pixel_ram
// Project Name: VGA-Controller
// Target Devices: Basys3 Artix-7
// Description: 
//////////////////////////////////////////////////////////////////////////////////
module pixel_rom(
 output wire [3:0]  vgaRed,
 output wire [3:0]  vgaGreen,
 output wire [3:0]  vgaBlue,
 output wire [10:0] x,
 output wire [10:0] y,
 input  wire [10:0] line_count,
 input  wire [10:0] frame_count,
 input  wire        active,
 input  wire        clk
);
// Pixel RAM
reg [3:0] red_pixel_data   [10:0][10:0];
reg [3:0] blue_pixel_data  [10:0][10:0];
reg [3:0] green_pixel_data [10:0][10:0];
//
initial begin
$readmemh("vgaRed.mem"  ,red_pixel_data);
$readmemh("vgaGreen.mem",blue_pixel_data);
$readmemh("vgaBlue.mem" ,green_pixel_data);
end
// Generate x, y counter for 1280x1024 active region
assign x = (active) ? (line_count  - (112 + 248)) : 0;
assign y = (active) ? (frame_count - (3   + 38 )) : 0;
// When in the active region use x, y counter to get pixel data
assign vgaRed   = (active) ? red_pixel_data[x][y]   : 0;
assign vgaGreen = (active) ? blue_pixel_data[x][y]  : 0;
assign vgaBlue  = (active) ? green_pixel_data[x][y] : 0;

endmodule
