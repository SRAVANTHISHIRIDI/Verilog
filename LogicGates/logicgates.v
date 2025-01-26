module logicgates(a,b,y_not,y_and,y_or,y_nand,y_nor,y_exor,y_exnor);
input a,b;
output y_not,y_and,y_or,y_nand,y_nor,y_exor,y_exnor;
assign y_not = ~a;
assign y_and = a&b;
assign y_or = a|b;
assign y_nand = ~(a&b);
assign y_nor = ~(a|b);
assign y_exor = a^b;
assign y_exnor = ~(a^b);
endmodule
