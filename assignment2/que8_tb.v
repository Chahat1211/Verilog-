`include "que8.v"

module tb;
    reg clk, reset;
    parameter N = 10;
    wire [$clog2(N)-1:0] out;

    modN #(.N(N)) inst1 (.clk(clk), .reset(reset), .out(out));

    always #2 clk = ~clk;  

    initial begin 
        clk = 0;
        reset = 1;  
        #5 reset = 0;  
        $monitor ("Time = %0t | clk = %b | reset = %b | out = %b", $time, clk, reset, out);

        #50 $finish;  
    end 
endmodule

