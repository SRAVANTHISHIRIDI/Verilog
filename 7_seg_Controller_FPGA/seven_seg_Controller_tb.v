`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 13:15:20
// Design Name: 
// Module Name: seven_seg_Controller_tb
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


module seven_seg_Controller_tb;
reg [3:0]bcd;
wire [6:0]seg;
integer i;
seven_seg_controller dut(bcd,seg);
initial
begin
for(i=0;i<10;i=i+1)
begin
bcd=i;
#10;
end
#20 $stop;
end
endmodule
