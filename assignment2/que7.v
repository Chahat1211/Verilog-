`include "que2_b.v"

module siso(input in, input clk, reset, output out);
wire q1,q2,q3;
dff inst1(in,reset, clk, q1);
dff inst2(q1,reset, clk, q2);
dff inst3(q2,reset, clk, q3);
dff inst4(q3,reset, clk, out); 
endmodule


