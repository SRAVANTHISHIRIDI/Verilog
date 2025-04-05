`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:40:13
// Design Name: 
// Module Name: Full_Subtractor_tb
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


module Full_Subtractor_tb;
reg A,Bin,C;
wire Diff,Bout;
Full_Subtractor dut(A,Bin,C,Diff,Bout);
initial
begin
$monitor("A=%b,Bin=%b,C=%b,Diff=%b,Bout=%b",A,Bin,C,Diff,Bout);
A=0;Bin=0;C=0;
#2 A=0;Bin=0;C=1;
#2 A=0;Bin=1;C=0;
#2 A=0;Bin=1;C=1;
#2 A=1;Bin=0;C=0;
#2 A=1;Bin=0;C=1;
#2 A=1;Bin=1;C=0;
#2 A=1;Bin=1;C=1;
#6 $stop;
end
endmodule
