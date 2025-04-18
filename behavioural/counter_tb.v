`include "counter.v"

module tb;
reg clk, reset;
wire [3:0] q;


counter inst1 (.clk(clk), .reset(reset), .q(q));

initial clk = 0;
always #10 clk = ~clk; 


initial begin
    $monitor("Time = %0t | clk = %b, reset = %b, q = %b", $time, clk, reset, q);
    
    reset = 1; 
    #30;       
    reset = 0;  
    #100 reset = 1;
    #10 reset = 0;
    #200; 

    $finish;
end
endmodule

