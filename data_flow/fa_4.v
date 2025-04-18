module fa(input[3:0] a, b, input cin, output cout, output[3:0] sum);
assign {cout, sum} = a + b + cin;
endmodule
