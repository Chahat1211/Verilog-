module rip(input a, b, c, output reg sum, cout);
always @(*) begin
	if ( a == 0 & b ==0 & c == 0) begin
		sum = 0;
		cout = 0;
	end else if (a == 0 & b == 0 & c ==1 ) begin
		sum = 1;
		cout = 0;
	end else if (a == 0 & b == 1 & c == 0 ) begin
		sum = 1;
		cout = 0;
	end else if (a == 0 & b == 1 & c == 1 ) begin
		sum = 0;
		cout = 1;
	end else if (a == 1 & b == 0 & c == 0 ) begin
		sum = 1;
		cout = 0;
	end else if (a == 1 & b == 0 & c == 1 ) begin
		sum = 0;
		cout = 1;
	end else if (a == 1 & b == 1 & c == 0 ) begin
		sum = 0;
		cout = 1;
	end else if (a == 1 & b == 1 & c == 1 ) begin
		sum = 1;
		cout = 1;
	end
end
endmodule
	
