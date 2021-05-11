`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// Create Date: 08/19/2020 03:59:49 PM
// Module Name: top
// Project Name: VGA-Controller
// Target Devices: Basys3 Artix-7
// Tool Versions: 
// Description: VGA controller top
// Ports:
//  rst_i - reset button for vga clock and vga sync generator
//  clk_in_100mhz_i - Basys3 100 MHz clock
//  h_sync_o - VGA horizontal Sync Pulse
//  v_sync_o - VGA vertical Sync Pulse
//  vga_red_o - VGA red color data
//  vga_green_o - VGA green color data
//  vga_blue_o - VGA blue color data
module top(
 input  wire       rst_i,
 input  wire       clk_in_100mhz_i,
 output wire       h_sync_o,
 output wire       v_sync_o,
 output wire [3:0] vga_red_o,
 output wire [3:0] vga_green_o,
 output wire [3:0] vga_blue_o
);
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Internal net connections
wire pixel_clk_q;   // 108 MHz clock
wire active_q;      // '1' when horizontal and vertical counters are in display
wire [10:0] h_count_q;  // Horizontal pixel counter
wire [10:0] v_count_q;  // Vertical pixel counter
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Module instantiations
// 
// 100 MHz to 108 MHz MMCM pixel clock generator
vga_pixel_clk vga_Clk(
    .reset(rst_i),
    .clk_in_100mhz_i(clk_in_100mhz_i),
    .pixel_clk_o(pixel_clk_q)
);

// VGA sync pulse generator and screen horizontal and vertical pixel counters
sync_gen vga_Sync(
    .rst_i(rst_i),
    .pixel_clk_i(pixel_clk_q),
    .h_sync_o(h_sync_o),
    .v_sync_o(v_sync_o),
    .h_count_o(h_count_q),
    .v_count_o(v_count_q),
    .active_o(active_q)
);
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Display white screen
assign vga_red_o   = (active_q) ? 4'hF : 4'h0;
assign vga_green_o = (active_q) ? 4'hF : 4'h0;
assign vga_blue_o  = (active_q) ? 4'hF : 4'h0;
//////////////////////////////////////////////////////////////////////////////////

endmodule
