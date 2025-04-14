`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 13:53:42
// Design Name: 
// Module Name: FA_Mux
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


module FA_Mux(A,B,C,Sum,Carry);
input A,B,C;
output Sum,Carry;
Mux_4x1 m1(C,~C,~C,C,A,B,Sum);
Mux_4x1 m2(1'b0,C,C,1'b1,A,B,Carry);
endmodule
