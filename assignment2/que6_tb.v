`include "que6.v"
module tb;
reg clk, rstn ;
reg[1:0] select;
reg[3:0] p_din;
reg s_left_din, s_right_din;
wire [3:0] p_dout;
wire s_left_dout, s_right_dout;

shift inst1(.clk(clk), .rstn(rstn), .select(select), .p_din(p_din), .s_left_din(s_left_din), .s_right_din(s_right_din),.p_dout(p_dout), .s_left_dout(s_left_dout), .s_right_dout(s_right_dout));

always #2 clk = ~clk;
initial begin 
	$monitor("select = %b , p_din = %b, s_left_din = %b, s_right_din = %b ---> p_dout = %b, s_left_dout = %b, s_right_dout = %b", select, p_din, s_left_din,s_right_din, p_dout, s_left_dout, s_right_dout);

	clk = 0; rstn = 0;
	#3 rstn = 1;
	
	p_din = 4'b1101;
	s_left_din = 1'b1;
	s_right_din= 1'b0;

	select = 2'h3; #10;
	select = 2'h1; #20;
	p_din = 4'b1101;
	select = 2'h3;#10;
	select = 2'h2; #20;
	select = 2'h0; #20;
	$finish;
end
endmodule
	


