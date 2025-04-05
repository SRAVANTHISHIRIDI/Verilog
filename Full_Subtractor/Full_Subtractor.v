`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:40:37
// Design Name: 
// Module Name: Full_Subtractor
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


module Full_Subtractor(A,Bin,C,Diff,Bout);
input A,Bin,C;
output Diff,Bout;
//wire w1,w2,w3,w4;
assign Diff = (A^Bin^C);
assign Bout = (~A&(Bin^C)|(Bin&C));
/*xor x1(w1,Bin,C);
xor x2(Diff,w1,A);
and a1(w2,Bin,C);
not n1(w3,A);
and a2(w4,w1,w3);
or o1(Bout,w2,w3);*/
endmodule
