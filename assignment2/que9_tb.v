`include "que9.v"
module tb;
reg clk, reset, up_down;
wire[3:0] out ;

que9 inst1(clk, reset, up_down, out);


always #5 clk = ~clk;

initial begin
clk = 0; 
reset = 1;
up_down = 0;
$monitor ( " clk = %b, reset = %b, up_down = %b, out = %b " , clk, reset,up_down,out);
#20;
reset = 0;
#200;
up_down = 1;
#20 $finish;
end 
endmodule 
