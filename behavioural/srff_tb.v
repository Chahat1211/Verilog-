`include "srff.v"

module tb;
reg s, r, clk;
wire q, qbar;

srff inst1(.s(s), .r(r), .clk(clk), .q(q), .qbar(qbar));

initial clk = 0;
always #10 clk = ~clk;

initial begin
    $monitor("Time = %0t | s = %b, r = %b, clk = %b, q = %b, qbar = %b", 
             $time, s, r, clk, q, qbar);

    
    s = 0; r = 0;
    #20; s = 0; r = 1; 
    #20; s = 1; r = 0;  
    #20; s = 0; r = 0;  
    #20; s = 1; r = 1;  
    #20; $finish;       
end
endmodule

