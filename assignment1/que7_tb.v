`include "que7.v"
module tb;
reg[3:0] a,b;
reg K;
wire[3:0] sum;
wire cout;
integer i;

que7 inst1(.a(a),.b(b),.K(K),.sum(sum),.cout(cout));

initial begin
a<=4'b0000;
b<=4'b0000;
K<=0;

$monitor("K=%0b, a = %4b, b = %4b, sum = %4b, cout = %0b",K,a,b,sum,cout);

for(i = 0; i < 512; i=i+1) begin 
	{K,a,b} = i;
	#10;
end
end
endmodule
