`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// 
// Create Date: 08/14/2020 10:32:27 AM
// Design Name: VGA Controller
// Module Name: horizontal
// Project Name: vga_controller
// Target Devices: Basys_3 FPGA
// Description: Timing information used in this project can be found at this link
// http://tinyvga.com/vga-timing/640x480@60Hz
// Dependencies: horizontal.v, vertical.v
//////////////////////////////////////////////////////////////////////////////////

module vertical(
    output reg  [15:0] vert_counter  = 16'b0,
    input  wire        en_vert_count,
    input  wire        clk_25MHz
);
    
always @ (posedge clk_25MHz) begin
    if(en_vert_count) begin
        if(vert_counter < 524) begin
            vert_counter <= vert_counter + 1'b1;
        end else begin
            vert_counter <= 1'b0;
        end
    end else begin
        vert_counter <= 1'b0;
    end
end

endmodule

