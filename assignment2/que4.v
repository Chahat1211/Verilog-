`include "que2_b.v"
module tff(input t, clk, reset, output q); 
dff inst1(.d(t^q),.clk(clk),.reset(reset),.q(q));

endmodule

