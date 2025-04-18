`include "mux_ter.v"
module tb;
reg a, b, c, d, s0, s1;
wire out;

mux inst1(.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1),.out(out));

initial begin 
a = 1'b1;
b = 1'b0;
c = 1'b1;
d = 1'b0;
s0 = 1'b0;
s1= 1'b0;

$monitor("a = %b, b = %b, c = %b, d = %b,s1 = %b, s0 = %b, out = %b", a, b, c, d,s1, s0, out);

#5 s1 = 1'b1;
#5 s0 = 1'b1; s1 = 1'b0;
#5 s1 = 1'b1;


end
endmodule



