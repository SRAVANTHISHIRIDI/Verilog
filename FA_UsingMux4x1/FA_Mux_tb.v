`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 13:54:24
// Design Name: 
// Module Name: FA_Mux_tb
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


module FA_Mux_tb;
reg A,B,C;
wire Sum,Carry;
integer i;
FA_Mux dut(A,B,C,Sum,Carry);
initial
begin
for(i=0;i<8;i=i+1)
begin
{A,B,C} = i;
#10;
end
#20 $stop;
end
endmodule
