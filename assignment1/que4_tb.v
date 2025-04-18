`include "que4.v"
module tb;
reg x1,x2,x3;
wire f;
integer i;

que4 inst1(.x1(x1),.x2(x2),.x3(x3),.f(f));

initial begin
x1<=0;
x2<=0;
x3<=0;

$monitor("x3=%0b,x2=%0b,x1=%0b,f=%0b", x3,x2,x1,f);

for(i =0 ; i< 8;i=i+1) begin
	{x3,x2,x1} = i;
	#10;
end
end
endmodule
