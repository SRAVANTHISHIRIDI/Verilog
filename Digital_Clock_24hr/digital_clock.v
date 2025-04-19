`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 13:09:39
// Design Name: 
// Module Name: digital_clock
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


module digital_clock(clk,rst,hrs,mins,secs);
input clk,rst;
output reg[5:0]hrs=0,mins=0,secs=0;
always @(posedge clk or posedge rst)
begin
if(rst)
{hrs,mins,secs}=0;
else 
begin
    if(secs==6'd59)
      begin secs<=0;
      if(mins==6'd59)
        begin mins<=0;
             if(hrs==6'd23)
              hrs<=0;
             else
             hrs=hrs+1'd1;
             end
        else
        mins=mins+1'd1;
        end
        else
     secs<=secs+1'd1;
     end
end
endmodule
     
    

