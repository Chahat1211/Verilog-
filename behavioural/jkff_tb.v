`include "jkff.v"

module tb;
reg j, k, clk;
wire q, qbar;

jkff inst1(.j(j), .k(k), .clk(clk), .q(q), .qbar(qbar));

initial clk = 0;
always #10 clk = ~clk;

initial begin
    $monitor("Time = %0t | j = %b, k = %b, clk = %b, q = %b, qbar = %b", 
             $time, j, k, clk, q, qbar);

    
    j = 0; k = 0;
    #20; j = 0; k = 1; 
    #20; j = 1; k = 0;  
    #20; j = 0; k = 0;  
    #20; j = 1; k = 1;  
    #20; $finish;       
end
endmodule

