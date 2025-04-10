`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2025 12:18:39
// Design Name: 
// Module Name: LFSR_tb
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

module LFSR_tb();
reg clk,rst;
wire [3:0]q;
LFSR DUT(.clk(clk),.rst(rst),.q(q));

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
rst=1;
#10 rst=0;
#150 $finish;
end 

initial begin 
$monitor($time,"clk=%b,reset=%b,lfsr_out=%b",clk,rst,q);
end
endmodule
