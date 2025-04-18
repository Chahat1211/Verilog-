`include "que2.v"
module tb;
reg d,clk, areset;
wire q;

dff inst1(d, areset,clk, q);

initial d = 0;
always #10 d = ~d;

initial clk = 0;
always #5 clk = ~clk;

initial begin 
areset = 1;

$monitor ("d = %b, clk = %b, areset = %b, q = %b", d,clk, areset,q);

#70 areset = 0;
#80 areset = 1;
#100 $finish;
end
endmodule
