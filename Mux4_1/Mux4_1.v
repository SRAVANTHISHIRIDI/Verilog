`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2025 22:21:33
// Design Name: 
// Module Name: Mux4_1
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


module Mux4_1(I,S,Y);
input [3:0]I;
input [1:0]S;
output Y;
//reg Y;
//wire w1,w2,w3,w4,w5,w6;
//wire w1,w2;
assign Y = ((~S[1]&~S[0]&I[0])|(~S[1]&S[0]&I[1])|(S[1]&~S[0]&I[2])|(S[1]&S[0]&I[3]));
/*not n1(w1,S[1]);// Gate level Mpdelling
not n2(w2,S[0]);
and a1(w3,w1,w2,I[0]);
and a2(w4,w1,S[0],I[1]);
and a3(w5,S[1],w2,I[2]);
and a4(w6,S[1].S[0],I[3]);
or o1(Y,w3,w4,w5,w6);*/
/*Mux2_1 m1(I[0],I[1],S[0],w1);//Instantiation
Mux2_1 m2(I[2],I[3],S[1],w2);
Mux2_1 m3(w1,w2,S[1],Y);*/
endmodule
