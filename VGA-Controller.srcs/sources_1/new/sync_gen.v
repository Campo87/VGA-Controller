`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// Create Date: 08/18/2020 04:03:06 AM
// Module Name: sync_gen
// Project Name: VGA-Controller
// Target Devices: Basys3
// Description: Parameters and counter widths choosen for 16bit 640x480 @ 60Hz
// Input clk needs to be 25MHz
// http://tinyvga.com/vga-timing/1280x1024@60Hz -- Timing information
//////////////////////////////////////////////////////////////////////////////////


module sync_gen(
 output wire       hsync,
 output wire       vsync,
 output wire       active,
 output reg  [10:0] line_count = 0,
 output reg  [10:0] frame_count = 0,
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

always @ (posedge clk) begin
    // End of line horizontal counter 
    if(line_count == LINE_TOTAL - 1) begin
        line_count <= 0;
        // End of frame vertical counter
        if(frame_count == FRAME_TOTAL - 1) begin
            frame_count <= 0;
        // Still in frame
        end else begin
            frame_count <= frame_count + 1;
        end
    // Still on line
    end else begin
        line_count <= line_count + 1;
    end
end

// Assign sync pulses to active regions
assign hsync  = (line_count  < SYNC_HORIZ) ? 1'b1 : 1'b0;
assign vsync  = (frame_count < SYNC_VERT ) ? 1'b1 : 1'b0;
assign active = ((ACTIVE_START_HORIZ <= line_count  && line_count  < ACTIVE_END_HORIZ) &&  
                 (ACTIVE_START_VERT  <= frame_count && frame_count < ACTIVE_END_VERT )) ? 1'b1 : 1'b0;
endmodule
