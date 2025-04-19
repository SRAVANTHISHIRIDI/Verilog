`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2025 13:08:05
// Design Name: 
// Module Name: clock_1hz_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clock_1hz_tb;
reg clk;
wire nclk;
clock_1hz dut(clk,nclk);
initial
begin
clk=0;
# 1000000000 $stop;
end
always #5 clk=~clk;
endmodule
