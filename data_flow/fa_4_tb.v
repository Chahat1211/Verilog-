`include "fa_4.v"
module tb;
reg[3:0] a, b;
reg cin;
wire cout;
wire[3:0] sum;

fa inst1 (.a(a),.b(b),.cin(cin),.cout(cout),.sum(sum));

initial begin
a = 4'b0101;
b = 4'b1010;
cin = 1'b0;

$monitor("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);

#5 a = 4'b1001; b = 4'b1000; cin = 1'b1;
#5 a = 4'b1111; b = 4'b1011; cin = 1'b0;
end
endmodule

