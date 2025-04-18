`include "que3.v"
module tb;
reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
wire y;
integer i;

que3 inst1(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),.s0(s0),.s1(s1),.s2(s2),.y(y));

initial begin 
i0<=0;
i1<=1;
i2<=0;
i3<=1;
i4<=0;
i5<=1;
i6<=0;
i7<=1;
s0<=0;
s1<=0;
s2<=0;

$monitor("i0 = %0b,i1 = %0b,i2 = %0b,i3 = %0b,i4 = %0b,i5 = %0b,i6 = %0b,i7 = %0b,s2 = %0b,s1 = %0b,s0 = %0b,y = %0b",i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);

for(i=0; i <8; i=i+1) begin
	{s2,s1,s0} = i;
	#10;
end
end
endmodule;



