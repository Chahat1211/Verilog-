//testbench for que 1
`include "que1.v"
module tb;
reg a, b;
wire x;
integer i;

que1 inst1(.a(a), .b(b), .x(x));

initial begin
	a<=0;
	b<=0;

	$monitor("a =%0b, b = %0b, x = %0b", a, b, x);
	
	for(i=0; i <4;i=i+1) begin 
		{a,b} = i;
		#10;
	end
end
endmodule
