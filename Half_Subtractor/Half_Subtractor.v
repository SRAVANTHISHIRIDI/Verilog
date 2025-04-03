`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 23:03:49
// Design Name: 
// Module Name: Half_Subtractor
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


module Half_Subtractor(A,B,Diff, Borrow);
input A,B;
output Diff,Borrow;
//wire w1;
assign Diff=A^B;
assign Borrow=(~A&B);
//xor x1(Diff,A,B);
//not n1(w1,A);
//and a1(Borrow,w1,B);
endmodule
