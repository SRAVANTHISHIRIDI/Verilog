`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2025 13:07:39
// Design Name: 
// Module Name: clock_1hz
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


module clock_1hz(clk,nclk);
input clk;
output reg nclk=0;
integer count=0;
always @(posedge clk)
begin
if(count==50000000)
begin 
nclk=~nclk;
count<=0;
end
else
count = count+1;
end
endmodule
