module mux(input a, b,sel, output z);
	assign a = 1'b1;
	assign b = 1'b0;
	assign sel = 1'b0;
	wire x,y ;
	and(x, a, ~sel) ;
	and(y,b,sel);
	or(z,x,y);
	$display("%b",z);
endmodule


