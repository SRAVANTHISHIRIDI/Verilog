`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:23:15
// Design Name: 
// Module Name: Full_Adder_tb
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


module Full_Adder_tb;
reg A,B,Cin;
wire Sum,Cout;

Full_Adder dut(A,B,Cin,Sum,Cout);
initial
begin
$monitor("A=%b,B=%b,Cin=%b,Sum=%b,Cout=%b",A,B,Cin,Sum,Cout);
A=0;B=0;Cin=0;
#2 A=0;B=0;Cin=1;
#2 A=0;B=1;Cin=0;
#2 A=0;B=1;Cin=1;
#2 A=1;B=0;Cin=0;
#2 A=1;B=0;Cin=1;
#2 A=1;B=1;Cin=0;
#2 A=1;B=1;Cin=1;
#20 $stop;
end
endmodule
