module que6(input a,b, output reg[3:0] d);

always @(*) begin 
	if(a == 0 & b == 0 ) 
		d<=4'b1000;
	else if (a==0 & b==1)
		d<=4'b0100;
	else if (a==1 & b==0)
		d<=4'b0010;
	else if ( a==1 & b==1)
		d<=4'b0001;
	else d = 4'bxxxx;
end
endmodule
