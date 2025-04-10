module LFSR(clk,rst,q);
input clk,rst;
output reg [3:0]q;
always @ (posedge clk or posedge rst)begin
if (rst)
q <= 4'b0010;
else 
q <= {q[2:0],(q[3] ^ q[1])};
end
endmodule

