`include "que4.v"

module tb;
reg t, clk, reset;
wire q;


tff inst1(.t(t), .clk(clk), .reset(reset), .q(q));

initial t = 0;
always #10 t = ~t;
initial clk = 0;
always #5 clk = ~clk;

initial begin 
    $monitor ("t = %b,clk = %b, reset = %b, q = %b", t, clk,reset, q);
    reset = 1; 
    #10 reset = 0; 
    #50 reset = 1;
    #2 $finish;
end
endmodule

