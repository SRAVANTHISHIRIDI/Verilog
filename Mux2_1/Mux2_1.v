`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2025 21:46:05
// Design Name: 
// Module Name: Mux2_1
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


module Mux2_1(I0,I1,S,Y);
input I0,I1,S;
output Y;
//reg Y;
wire w1,w2,w3;
//assign Y=((~S&I0)|(S&I1));//Dataflow Modelling
not n1(w1,S);
and a1(w2,I0,S);
and a2(w3,I1,w1);
or o1(Y,w2,w3);  //Gate Level Modelling
/*always @(S)  //Behavioural Modelling
begin
case(S)
1'b0: Y = I0;
1'b1: Y = I1;
endcase
end*/
endmodule
