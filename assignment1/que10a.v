`include "3x1dec.v"
module dec4x16 (
    input [3:0] in,  
    output [15:0] out 
);
    wire [7:0] out1, out2; 
    wire en1, en2;

    assign en1 = ~in[3]; 
    assign en2 = in[3];  

   
    deco d1 (.in(in[2:0]), .en(en1), .out(out1));
    deco d2 (.in(in[2:0]), .en(en2), .out(out2));

    assign out = {out2, out1}; 

endmodule
