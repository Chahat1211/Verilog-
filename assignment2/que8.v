module modN(clk, reset, out);
parameter N = 10;
input clk, reset;
output reg[$clog2(N)-1:0] out;

always @(posedge clk) begin
	if (reset) out <= 0;
	else if (out == N-1) out <= 0;
	else out <= out + 1;
end
endmodule 
	
