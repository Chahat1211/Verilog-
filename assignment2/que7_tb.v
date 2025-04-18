`include "que7.v"
module tb;
reg clk,reset;
reg in;
wire out;

siso inst1(.clk(clk),.reset(reset),.in(in),.out(out));

always #2 clk = ~clk;

initial begin
clk = 0;
in = 1'b1;
reset = 1;

$monitor (" clk = %b, in = %b, reset = %b, out = %b", clk, in , reset, out);
#4 reset = 0;
#4 in= 1'b1;
#4 in = 1'b0;
#4 in = 1'b1;
#4 in = 1'b1; 

#4 in = 1'b0;
#4 in =1'b0;
#4 in = 1'b1;
#4 in = 1'b1;
#4 $finish;
end
endmodule
