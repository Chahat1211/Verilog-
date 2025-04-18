`include "fa_gate.v"
module tb;
reg a, b, cin;
wire cout, sum;
integer i;

fa inst1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin 
a = 0;
b = 0;
cin = 0;

$monitor("a=%b, b=%b, cin=%b, sum = %b, cout = %b", a,b,cin,sum,cout);

for(i =0 ; i < 8; i=i+1) begin
	{a,b,cin} = i;
	#10;
end
end
endmodule

