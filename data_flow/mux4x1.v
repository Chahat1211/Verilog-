module mux(input a,b, c, d, s0, s1, output out);
assign out = (a & ~s0 & ~s1) | (b & ~s0 & s1) | (c & s0& ~s1) | (d & s0 & s1);
endmodule
