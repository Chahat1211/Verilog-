`include "que5.v"
module tb;
reg[3:0] b;
wire[3:0] g;
integer i;

que5 inst1(b,g);

initial begin
b<=4'd0;

$monitor("b = %4b, g = %4b",b,g);

for (i =0 ; i < 16; i=i+1) begin
	b = i;
	#10;
end
end
endmodule
