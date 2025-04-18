module que9(input clk, reset, up_down, output[3:0] out);
reg[3:0] counter_up_down;

always@(posedge clk or posedge reset) begin
	if (reset) counter_up_down <= 4'h0;
	else if (~up_down)
		counter_up_down <= counter_up_down + 4'h1;
	else 	
		counter_up_down <= counter_up_down - 4'h1;
end

assign out = counter_up_down;
endmodule
