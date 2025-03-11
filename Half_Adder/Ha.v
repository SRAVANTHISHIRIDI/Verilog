`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2025 16:13:42
// Design Name: 
// Module Name: Ha
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


module Ha(a,b,sum,carry);
    input a,b;
    output sum,carry;
    assign sum=a^b;
    assign carry=a&b;
endmodule

module ha_top(sw,led);
input [1:0]sw;
output [1:0]led;
Ha h1(sw[0],sw[1],led[0],led[1]);
endmodule
