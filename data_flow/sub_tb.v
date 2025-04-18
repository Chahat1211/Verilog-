`include "sub.v" 
module tb;
reg x, y ,z;
wire b, d;
integer i;

sub ist1 (.x(x), .y(y),.z(z), .d(d),.b(b));


initial begin
x =1'b0;
y= 1'b0;
z =1'b0;

$monitor(" x = %b, y = %b, z = %b, d = %b, b = %b", x,y,z,d,b);

for (i =0; i < 8; i=i+1) begin
	{x,y,z} = i;
	#10;
end
end 
endmodule
