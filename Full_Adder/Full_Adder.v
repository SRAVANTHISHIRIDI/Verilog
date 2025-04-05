`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:22:49
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;
wire w1,w2,w3;
//assign Sum = (A^B^Cin);
//assign Cout = (A&(B^Cin)|(B&Cin));
xor x1(w1,B,Cin);
xor x2(Sum,w1,A);
and a1(w2,B,Cin);
and a2(w3,w1,A);
or o1(Cout,w2,w3);

endmodule
