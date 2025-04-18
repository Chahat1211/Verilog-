`include "dff.v"
module tb;

reg d, reset ,clk;
wire q, qbar;

dff inst1(.d(d),.reset(reset),.clk(clk),.q(q),.qbar(qbar));

always #10 clk = ~clk;

initial begin
reset <= 0;
d<=0;
clk<=0;


$monitor("d = %b,reset = %b, clk = %b, q = %b, qbar = %b", d,reset, clk , q, qbar);

	reset = 1; d <=0;
	#100; reset<=0; d <=1;
	#100; d <=0;
	#100; d <=1;
#30 $finish;
end
endmodule
