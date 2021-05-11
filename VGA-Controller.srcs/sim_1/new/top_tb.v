`timescale 1ns / 1ps

module top_tb;

reg        clk;
reg        rst;
wire       Hsync;
wire       Vsync;
wire [3:0] vgaRed;
wire [3:0] vgaGreen;
wire [3:0] vgaBlue;

top UUT(rst,clk,Hsync,Vsync,vgaRed,vgaGreen,vgaBlue);

initial begin
    clk = 0;
    rst = 1;
    
    #15
    rst = 0;
end



always #5 clk = ~clk;
    
endmodule
