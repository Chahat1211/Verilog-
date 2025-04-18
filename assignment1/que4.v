module que4(input x1,x2,x3, output reg f);
	always @(*) begin
		 f = (~x3 & x2) | (x1 & x3);
	end
endmodule
