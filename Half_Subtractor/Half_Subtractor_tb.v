`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 23:04:21
// Design Name: 
// Module Name: Half_Subtractor_tb
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


module Half_Subtractor_tb;
reg A,B;
wire Diff,Borrow;
Half_Subtractor dut(A,B,Diff,Borrow);
initial
begin
A=0;B=0;
#2 A=0;B=1;
#2 A=1;B=0;
#2 A=1;B=1;
#20 $stop;
end
endmodule
