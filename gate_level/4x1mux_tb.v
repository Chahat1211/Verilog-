`include "4x1mux.v"
module tb;
reg i0, i1, i2, i3, s0, s1;
wire out;
integer i;
mux inst1( .i0(i0), .i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.out(out));

initial begin
	i0<=0;
	i1<=0;
	i2<=0;
	i3<=0;
	s0<=0;
	s1<=0;

	$monitor("i0=%0b,i1=%0b,i2=%0b,i3=%0b,s0=%0b,s1=%0b,out=%0b",i0,i1,i2,i3,s0,s1,out);

	for(i =0; i<64; i=i+1) begin
		{i0,i1,i2,i3,s0,s1} = i;
		#10;
	end
end
endmodule
