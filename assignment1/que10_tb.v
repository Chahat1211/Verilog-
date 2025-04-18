`include "que10.v"

module tb;
reg a, b, c, e;
wire[15:0] d;
integer i;

que10 inst1(.a(a), .b(b), .c(c), .e(e), .d(d));

initial begin 
a <=0;
b <=0;
c <=0;
e <=0;

$monitor("e= %b,a= %b,b= %b,c= %b,d=%b",e,a,b,c,d);

for( i =0; i < 16 ; i= i+1) begin
	{e,a,b,c} = i;
	#10;
end
end
endmodule

