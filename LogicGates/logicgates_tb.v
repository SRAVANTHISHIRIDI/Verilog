module logicgates_tb;
reg a,b;
wire y_not,y_and,y_or,y_nand,y_nor,y_exor,y_exnor;
logicgates dut(a,b,y_not,y_and,y_or,y_nand,y_nor,y_exor,y_exnor);
initial 
begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#20 $stop;
end
endmodule
