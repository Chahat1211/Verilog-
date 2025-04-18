`include "que1.v"
module tb;
reg a, b, c;
wire sum, cout;
integer i;

rip inst1(a,b,c,sum,cout);

initial begin 
a =0; 
b =0;
c =0;

$monitor("a = %b, b= %b, c= %b, sum = %b, cout = %b", a, b, c, sum, cout);

for(i =0 ; i< 8; i=i+1) begin
	{a,b,c} = i;
	#10;
end
end 
endmodule
