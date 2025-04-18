module jk(input j, k,preset, clear,clk, output reg q);
always @(posedge clk) begin
	if (clear) q <= 0;
	else if (preset) q<=1;
	else begin
		if ( j == 0 & k == 0 ) q <= q;
		else if ( j == 0 & k == 1) q <= 0;
		else if (j == 1 & k == 0) q <=1;
		else if (j == 1 & k == 1) q<=~q;
	end
end
endmodule
