module mux(input a,b,c,d,s0,s1, output out);
assign out = s1 ? (s0 ? d: c) : (s0 ? b: a);
endmodule
