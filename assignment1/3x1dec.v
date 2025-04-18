module deco(
    input [2:0] in,  
    input en,         
    output reg [7:0] out 
);
    always @(*) begin
        if (en) 
            out = 8'b00000001 << in; 
        else 
            out = 8'b00000000; 
    end
endmodule
