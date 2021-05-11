`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// Create Date: 08/18/2020 04:03:06 AM
// Module Name: sync_gen
// Project Name: VGA-Controller
// Target Devices: Basys3 Artix-7
// Description: Sync pulse generator for VESA Signal 1280x1024@60 Hz
// Ports:
//    rst_i - active high synchronous reset
//    pixel_clk_i - pixel clock speed (108 MHz required)
//    h_sync_o - Horizontal sync pulse, active high
//    v_sync_o - Vertical sync pulse, active high
//    h_count_o - Horizontal line counter
//    v_count_o - Veritcal frame counter
//    active_o - Active high when horizontal and vertical counters are in the
//             display region
module sync_gen(
 input   wire        rst_i,
 input   wire        pixel_clk_i,
 output  wire        h_sync_o,
 output  wire        v_sync_o,
 output  wire [10:0] h_count_o,
 output  wire [10:0] v_count_o,
 output  wire        active_o
);
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Timing Parameters
// Screen Refresh  : 60 Hz
// Pixel Frequency : 108 MHz
// Not all parameters are used in the code bellow
// Refrence: http://tinyvga.com/vga-timing/1280x1024@60Hz
//
//       |    Scanline   |  Lines  |
parameter H_FRAME_WIDTH  = 11'd1280;
parameter H_FP           = 11'd48;
parameter H_SYNC         = 11'd112;
parameter H_BP           = 11'd248;
parameter H_MAX          = 11'd1688;
//       |     Frame     |  Lines  |
parameter V_FRAME_HEIGHT = 11'd1024;
parameter V_FP           = 11'd1;
parameter V_SYNC         = 11'd3;
parameter V_BP           = 11'd38;
parameter V_MAX          = 11'd1066;
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Templates Counters - Sequential Logic
// 
// COUNTER_TC_MACRO: Counter with terminal count implemented in a DSP48E
//                   Artix-7
// Xilinx HDL Language Template, version 2020.2
//
// Horizontal line counter from 0 to H_MAX-1 (1687), clocked at 108 MHz.
COUNTER_TC_MACRO #(
   .COUNT_BY(48'd1),         // Count by value
   .DEVICE("7SERIES"),       // Target Device: "7SERIES"
   .DIRECTION("UP"),         // Counter direction, "UP" or "DOWN"
   .RESET_UPON_TC("TRUE"),   // Reset counter upon terminal count, "TRUE" or "FALSE"
   .TC_VALUE(H_MAX - 11'd1), // Terminal count value (1687)
   .WIDTH_DATA(11)           // Counter output bus width, 1-48
) LINE_COUNTER_inst (
   .Q(h_count_o),            // Counter output bus, width determined by WIDTH_DATA parameter
   .TC(TC_horizontal_q),     // 1-bit terminal count output, high = terminal count is reached
   .CLK(pixel_clk_i),        // 1-bit positive edge clock input (108MHz)
   .CE(1'b1),                // 1-bit active high clock enable input
   .RST(rst_i)               // 1-bit active high synchronous reset
);
// Vertical frame counter from 0 to V_MAX-1 (1065). This counter's clock is
// based on when the horizontal counter reaches it's terminal count.
COUNTER_TC_MACRO #(
   .COUNT_BY(48'd1),         // Count by value
   .DEVICE("7SERIES"),       // Target Device: "7SERIES"
   .DIRECTION("UP"),         // Counter direction, "UP" or "DOWN"
   .RESET_UPON_TC("TRUE"),   // Reset counter upon terminal count, "TRUE" or "FALSE"
   .TC_VALUE(V_MAX - 11'd1), // Terminal count value (1065)
   .WIDTH_DATA(11)           // Counter output bus width, 1-48
) FRAME_COUNTER_inst (
   .Q(v_count_o),            // Counter output bus, width determined by WIDTH_DATA parameter
   .TC(TC_vertical_q),       // 1-bit terminal count output, high = terminal count is reached
   .CLK(TC_horizontal_q),    // 1-bit positive edge clock input (Horizontal terminal count flag)
   .CE(1'b1),                // 1-bit active high clock enable input
   .RST(rst_i)               // 1-bit active high synchronous reset
);
// End of COUNTER_TC_MACRO_inst instantiations
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Combinational Logic
// 
// Assign horizontal and vertical sync pulses
assign h_sync_o = ((H_FP + H_FRAME_WIDTH - 1)  <= h_count_o) && (h_count_o < (H_FP + H_FRAME_WIDTH  + H_SYNC - 1)) ? 1'b1 : 1'b0;
assign v_sync_o = ((V_FP + V_FRAME_HEIGHT - 1) <= v_count_o) && (v_count_o < (V_FP + V_FRAME_HEIGHT + V_SYNC - 1)) ? 1'b1 : 1'b0;
// Active is '1' when horizontal and vertical counters are both in the frame
// region, indicating the monitor is ready for video color data. 
assign active_o = (h_count_o < H_FRAME_WIDTH) && (v_count_o < V_FRAME_HEIGHT) ? 1'b1 : 1'b0;
//////////////////////////////////////////////////////////////////////////////////

endmodule
