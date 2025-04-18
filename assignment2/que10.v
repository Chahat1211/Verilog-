//sequence 1001

module que10(input clk, rst_n, x, output z) ;
	parameter A= 4'h1;
	parameter B= 4'h2;
	parameter C= 4'h3;
	parameter D= 4'h4;

	reg[3:0] state, nextstate;
	
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) state <= A;
		else state <= nextstate;
	end

	always @(state or x) begin
		case(state)
			A: begin
			if (x==0) nextstate = A;
			else nextstate = B;
			end
			B: begin
			if (x==0) nextstate = C;
			else nextstate = B;
			end
			C: begin
			if (x==0) nextstate = D;
			else nextstate = B;
			end
			D: begin 
			if (x==0) nextstate = A;
			else nextstate = B;
			end
			default nextstate =A;
		endcase	
	end
	assign z = (state == D ) && (x == 1 ) ? 1:0;
endmodule

