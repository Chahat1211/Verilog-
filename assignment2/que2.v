module dff(input d, areset, clk, output reg q);
always @(posedge clk or posedge areset) begin
	if (!areset) 
		q <= 0;
	else 
		q <=d; 
end
endmodule
