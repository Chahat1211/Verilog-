`include "que8.v"

module tb;
    reg [3:0] x, y;
    wire [3:0] sx, sy; 

    que8 inst1 (.x(x), .y(y), .sx(sx), .sy(sy));

    initial begin 
        x = 4'b0101;
        y = 4'b1001;

        $monitor("x = %4b, y = %4b, sx = %4b, sy = %4b", x, y, sx, sy);

        #10 x = 4'b1011; y = 4'b1100;
    end
endmodule

