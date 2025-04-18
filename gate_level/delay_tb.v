`include "delay.v"
module tb;
reg a, b, c;
wire out;

delay inst1(.a(a),.b(b),.c(c),.out(out));

initial begin 
a = 1'b0;
b = 1'b0;
c = 1'b0;

$monitor("a=%b, b = %b, c = %b, out = %b",a,b,c,out);

#10 a = 1'b1; b = 1'b1; c = 1'b1; 

#10 a =1'b0; b =1'b1; c= 1'b0;

#20 $finish;
end
endmodule
