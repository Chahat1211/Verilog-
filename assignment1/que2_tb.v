//testbench que2
`include "que2.v"
module tb;
reg x1,x2,x3,x4;
wire f;
integer i ;

que2 inst1 (.x1(x1), .x2(x2), .x3(x3), .x4(x4), .f(f));

initial begin 
	x1<=0;
	x2<=0;
	x3<=0;
	x4<=0;

	$monitor("x1 = %0b,x2 = %0b,x3 = %0b,x4 = %0b,f = %0b", x1, x2,x3,x4,f);

	for(i=0; i < 16; i= i+1) begin
		{x1,x2,x3,x4} = i;
		#10;
	end
end
endmodule;

