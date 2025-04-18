`include "fa_4.v"
module tb;
reg[3:0] a, b;
reg cin;
wire[3:0] sum;
wire cout;


fa_4 inst1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin 
a = 4'b0000;
b = 4'b0000;
cin = 0;

$monitor("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum,cout);

#5 a = 4'b0101; b = 4'b1111; 
#5 a = 4'b1001; b= 4'b0001;
#5 a = 4'b1010; b= 4'b1000; cin = 1;

end 
endmodule





