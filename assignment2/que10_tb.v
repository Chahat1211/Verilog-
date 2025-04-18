`include  "que10.v"
module tb;
reg clk, rst_n, x;
wire z;

que10 inst1(clk,rst_n,x,z);

initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    x = 0;


    #1 rst_n = 0;
    #2 rst_n = 1;
    
    #3 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #10;
    $monitor ("Time = %0t, clk = %b, x = %b, rst_n = %b , z = %b",$time, clk, x,rst_n, z);
    $finish;
  end
endmodule
