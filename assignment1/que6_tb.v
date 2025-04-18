`include "que6.v"
module tb;
reg a, b;
wire[3:0] d;
integer i;

que6 inst1(a,b,d);

initial begin 
a<=0;
b<=0;

$monitor("a = %0b, b = %0b, d = %4b",a,b,d);

for(i=0; i<4;i=i+1) begin
	{a,b} = i;
	#10;
end
end
endmodule

