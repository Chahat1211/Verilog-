// Code your design here
module mux( input a, b, sel, output reg out);
  
  always@(a or b or sel) begin
  	case(sel)
    	1'b0: out = a;
    	1'b1: out = b;
  	endcase
  end
endmodule
