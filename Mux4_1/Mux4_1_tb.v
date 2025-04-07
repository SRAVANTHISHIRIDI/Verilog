`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2025 22:21:57
// Design Name: 
// Module Name: Mux4_1_tb
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


module Mux4_1_tb;
reg [3:0]I;
reg [1:0]S;
wire Y;
Mux4_1 dut(I,S,Y);
initial
begin
$display("Time\tselect\tinput\toutput");
$monitor("%0t\t%02b\t%04b\t%b",$time,S,I,Y);
I = 4'b0010;
S=2'b00;
#5 S=2'b01;
#5 S=2'b10;
#5 S=2'b11;
#20 $stop;
end
endmodule
