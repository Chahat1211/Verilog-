module regN (clear, enable, D, Q);
input clear;
input enable;
parameter N= 8;
input [N-1:0] D;
output [N-1:0] Q;
reg [N-1:0] Q;
always @( posedge clear or posedge enable)
if (clear)
Q = 0;
else if (enable == 1)
Q = D;
endmodule 
