`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: James Starks
// 
// Create Date: 08/14/2020 10:32:27 AM
// Design Name: VGA Controller
// Module Name: horizontal
// Project Name: vga_controller
// Target Devices: Basys_3 FPGA
// Description: Simple counter 0 - 799 to generate 
//////////////////////////////////////////////////////////////////////////////////

module horizontal(
    output reg  [15:0] horiz_counter = 16'b0,
    output reg         en_vert_count = 1'b0,
    input  wire        clk_25MHz
);
    
always @ (posedge clk_25MHz) begin
    if(horiz_counter < 799) begin
        horiz_counter <= horiz_counter + 1'b1;
        en_vert_count <= 1'b0;
    end else begin
        horiz_counter <= 1'b0;
        en_vert_count <= 1'b1;
    end
end

endmodule
