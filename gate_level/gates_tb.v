`include "gates.v"
module tb;
reg in1,in2;
wire out1,out2,out3,out4;
integer i;

gates inst1 (.in1(in1), .in2(in2) , .out1(out1), .out2(out2), .out3(out3), .out4(out4));

initial begin
	in1<=0;
	in2<=0;

	$monitor("in1 = %0b, in2=%0b, out1=%0b, out2=%0b, out3=%0b, out4=%0b",in1,in2,out1,out2,out3,out4);

	for(i =0; i < 4; i=i+1) begin
		{in1,in2} = i;
		#10;
	end
end 
endmodule


