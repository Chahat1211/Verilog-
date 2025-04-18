`include "que3.v"
module tb;
reg j,k , clear,preset, clk;
wire q;

jk inst1(j,k,preset,clear,clk,q);

initial clk = 0;
always #5 clk = ~clk;

initial begin 
j <= 0;
k <= 1;
clear <= 0;
preset<=0;

$monitor("j = %b, k = %b,preset = %b, clear = %b, clk = %b, q = %b" , j,k,preset, clear,clk,q);

#10 j =0; k =0;
#10 j =0; k =1; 
#10 j =1; k =0; 
#10 clear = 1;
#10 clear =0; j= 1; k=0;preset = 1;
#10 j = 1; k =1; preset = 0;
#10 $finish;
end
endmodule

