module que8(input [3:0] x, input [3:0] y, output reg [3:0] sx, output reg [3:0] sy);
    always @(*) begin
        sx = x ^ y;
        sy = y ^ sx;
        sx = sx ^ sy;
    end
endmodule
