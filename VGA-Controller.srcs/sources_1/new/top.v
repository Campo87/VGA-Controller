`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// Create Date: 08/19/2020 03:59:49 PM
// Module Name: top
// Project Name: VGA-Controller
// Target Devices: Basys3 Artix-7
// Tool Versions: 
// Description: 
// http://tinyvga.com/vga-timing/1280x1024@60Hz -- Timing information
//////////////////////////////////////////////////////////////////////////////////
module top(
 output wire       Hsync,
 output wire       Vsync,
 output wire [3:0] vgaRed,
 output wire [3:0] vgaGreen,
 output wire [3:0] vgaBlue,
 input  wire       clk
);
parameter SYNC_HORIZ            = 112;
parameter ACTIVE_START_HORIZ    = 112 + 248;
parameter ACTIVE_END_HORIZ      = 112 + 248 + 1280;
parameter LINE_TOTAL            = 1688;

parameter SYNC_VERT             = 3;
parameter ACTIVE_START_VERT     = 3 + 38;
parameter ACTIVE_END_VERT       = 3 + 38 + 1024;
parameter FRAME_TOTAL           = 1066;

wire [10:0] line_count;
wire [10:0] frame_count;
wire [10:0] x;
wire [10:0] y;
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

////////////////////////////////////////////////////////////////////////////
//* Custom pixel data from RAM
pixel_rom vga_ROM(
    .vgaRed(vgaRed),
    .vgaGreen(vgaGreen),
    .vgaBlue(vgaBlue),
    .x(x),
    .y(y),
    .line_count(line_count),
    .frame_count(frame_count),
    .active(active),
    .clk(vga_clk)
);
//*/
////////////////////////////////////////////////////////////////////////////
/* White screen
assign vgaRed   = (active) ? 4'hF : 4'h0;
assign vgaGreen = (active) ? 4'hF : 4'h0;
assign vgaBlue  = (active) ? 4'hF : 4'h0;
*/
////////////////////////////////////////////////////////////////////////////
/* Black & White bars
reg  [5:0]   black_counter = 0;
reg  [5:0]   white_counter = 0;
reg          flag   = 0;
always @ (posedge vga_clk) begin
    if(active) begin
        if(black_counter < 63) begin
            black_counter <= black_counter + 1;
            white_counter <= white_counter + 1;
        end else begin
            flag = ~flag;
            black_counter <= 0;
            white_counter <= 0;
        end
    end else begin
        black_counter <= 0;
        white_counter <= 0;
    end
end

assign vgaRed   = (flag) ? 4'hF : 4'h0;
assign vgaGreen = (flag) ? 4'hF : 4'h0;
assign vgaBlue  = (flag) ? 4'hF : 4'h0;
*/
////////////////////////////////////////////////////////////////////////////
endmodule
