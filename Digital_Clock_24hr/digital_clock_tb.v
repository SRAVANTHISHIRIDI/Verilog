`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:10:04
// Design Name: 
// Module Name: digital_clock_tb
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


module digital_clock_tb;
reg clk,rst;
wire [5:0]hrs,mins,secs;
digital_clock dut(clk,rst,hrs,mins,secs);
initial
begin
clk=0;
rst=1;
#10 rst=0;
#1000000000 $stop;
end
always #1 clk=~clk;
endmodule
