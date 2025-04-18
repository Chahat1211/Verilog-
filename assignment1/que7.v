module que7(input [3:0] a,b, input K,output reg[3:0] sum, output reg cout);
reg[3:0] B_mod;
reg Cin;

always @(*) begin 
	case(K)
		1'b0: begin
		B_mod = b;
		Cin = 1'b0;
		end
		1'b1: begin
		B_mod = ~b;
		Cin = 1'b1;
		end
	endcase

	{cout,sum} = a + B_mod + Cin;
end
endmodule


