`include "que2_b.v"
module tb;
reg d,clk, reset;
wire q;

dff inst1(d, reset,clk, q);

initial d = 0;
always #10 d = ~d;

initial clk = 0;
always #5 clk = ~clk;

initial begin 
reset = 1;

$monitor ("d = %b, clk = %b, areset = %b, q = %b", d,clk, reset,q);

#70 reset = 0;
#80 reset = 1;
#100 $finish;
end
endmodule
