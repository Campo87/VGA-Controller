`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// Create Date: 08/18/2020 04:03:06 AM
// Module Name: sync_gen
// Project Name: VGA-Controller
// Target Devices: Basys3
// Description: Parameters and counter widths choosen for 16bit 640x480 @ 60Hz
// Input clk needs to be 25MHz
// http://tinyvga.com/vga-timing/640x480@60Hz -- Timing information
//////////////////////////////////////////////////////////////////////////////////


module sync_gen(
  output wire       hsync,
  output wire       h_active,
  output wire       h_fp,
  output wire       h_bp,
  output reg  [9:0] horiz_count,
  output wire       vsync,
  output wire       v_active,
  output wire       v_fp,
  output wire       v_bp,
  output reg  [9:0] vert_count,
  input  wire       clk
);
parameter SYNC_HORIZ    = 96;
parameter FP_HORIZ      = 16;
parameter ACTIVE_HORIZ  = 640;
parameter BP_HORIZ      = 48;
parameter LINE_TOTAL    = 800;

parameter SYNC_VERT     = 2;
parameter FP_VERT       = 10;
parameter ACTIVE_VERT   = 480;
parameter BP_VERT       = 33;
parameter FRAME_TOTAL   = 525;

always @ (posedge clk) begin
    // End of line horizontal counter 
    if(horiz_count == LINE_TOTAL - 1) begin
        horiz_count <= 0;
        // End of frame vertical counter
        if(vert_count == FRAME_TOTAL) begin
            vert_count <= 0;
        // Still in frame
        end else begin
            vert_count <= vert_count + 1;
        end
    // Still on line
    end else begin
        horiz_count <= horiz_count + 1;
    end
end

// Assign sync pulses to active regions
assign hsync    = (horiz_count > SYNC_HORIZ) ? 1'b1 : 1'b0;
assign vsync    = (vert_count  > SYNC_VERT ) ? 1'b1 : 1'b0; 

assign h_fp     = ((horiz_count > SYNC_HORIZ)          && (horiz_count < FP_HORIZ+SYNC_HORIZ)) ? 1'b1 : 1'b0;
assign h_active = ((horiz_count > SYNC_HORIZ+FP_HORIZ) && (horiz_count < ACTIVE_HORIZ       )) ? 1'b1 : 1'b0;
assign h_bp     = ((horiz_count > ACTIVE_HORIZ)        && (horiz_count < LINE_TOTAL         )) ? 1'b1 : 1'b0;

assign v_fp     = ((vert_count > SYNC_VERT)            && (vert_count < FP_VERT + SYNC_VERT )) ? 1'b1 : 1'b0;
assign v_active = ((vert_count > SYNC_VERT + FP_VERT)  && (vert_count < ACTIVE_VERT         )) ? 1'b1 : 1'b0;
assign v_bp     = ((vert_count > ACTIVE_VERT)          && (vert_count < FRAME_TOTAL         )) ? 1'b1 : 1'b0;

endmodule
