`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2025 21:50:15
// Design Name: 
// Module Name: Mux2_1_tb
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


module Mux2_1_tb;
reg I0,I1,S;
wire Y;
Mux2_1 dut(I0,I1,S,Y);
initial
begin
I0=1'b0;I1=1'b1;
S=1'b0;
#30 $stop;
end
always #10 S=~S;
endmodule
