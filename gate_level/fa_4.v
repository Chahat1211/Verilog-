`include "fa_gate.v"
module fa_4(input[3:0] a, b, input cin, output[3:0] sum, cout);
	wire x, y ,z;
	fa inst1 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(x));
	fa inst2 (.a(a[1]), .b(b[1]), .cin(x), .sum(sum[1]), .cout(y));
	fa inst3 (.a(a[2]), .b(b[2]), .cin(y), .sum(sum[2]), .cout(z));
	fa inst4 (.a(a[3]), .b(b[3]), .cin(z), .sum(sum[3]), .cout(cout));
endmodule
