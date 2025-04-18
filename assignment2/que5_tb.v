`include "que5.v"
module tb;
reg enable,clear;
parameter N  = 8;
reg[N-1:0] D;
wire[N-1:0] Q;

regN inst1( .enable(enable),.clear(clear),.Q(Q),.D(D));

initial enable = 0;
always #10 enable = ~enable;

initial begin
D =0;
clear =0;

$monitor(" D = %b, enable = %b, clear = %b, Q = %b", D,enable,clear, Q);

#10 D = 8'b10001001;
#10 D =0; 
#10 D =1; clear = 1;
#10 $finish;
end
endmodule


