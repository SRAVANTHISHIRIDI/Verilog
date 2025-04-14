`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 13:14:46
// Design Name: 
// Module Name: seven_seg_controller
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


module seven_seg_controller(bcd,seg);
input [3:0]bcd;
output [6:0]seg;
reg [6:0]seg;
always @(bcd)
begin
case(bcd)
4'd0:seg = 7'b1000000;
4'd1:seg = 7'b1111001;
4'd2:seg = 7'b0100100;
4'd3:seg = 7'b0110000;
4'd4:seg = 7'b0011001;
4'd5:seg = 7'b0010010;
4'd6:seg = 7'b0000010;
4'd7:seg = 7'b1111000;
4'd8:seg = 7'b0000000;
4'd9:seg = 7'b0010000;
default : seg = 7'b1111111;
endcase
end
endmodule

module seven_seg_controller_top(an,sw,seg);
input [3:0]sw;
output [6:0]seg;
output reg [7:0]an = 8'b11111110;
seven_seg_controller uut(sw,seg);
endmodule
