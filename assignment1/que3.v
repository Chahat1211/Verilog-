module que3(input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,output y);
wire nots0, nots1, nots2;
wire w1,w2,w3,w4,w5,w6;
not g1(nots0, s0);
not g2(nots1, s1);
not g3(nots2, s2);

//mux1
wire w1a, w1b;
and g4(w1a, i0, ~s0);
and g5(w1b, i1, s0);
or g6(w1, w1a, w1b);

//mux2
wire w2a, w2b;
and g7(w2a, i2, ~s0);
and g8(w2b, i3, s0);
or g9(w2, w2a, w2b);

//mux3
wire w3a, w3b;
and g10(w3a, i4, ~s0);
and g11(w3b, i5, s0);
or g12(w3, w3a, w3b);

//mux4
wire w4a, w4b;
and g13(w4a, i6, ~s0);
and g14(w4b, i7, s0);
or g15(w4, w4a, w4b);

//next mux5
wire w5a, w5b;
and g16(w5a, w1, ~s1);
and g17(w5b, w2, s1);
or g18(w5, w5a, w5b);

//mux6
wire w6a, w6b;
and g19(w6a, w3, ~s1);
and g20(w6b, w4, s1);
or g21(w6, w6a, w6b);

//next mux7
wire w7a, w7b;
and g22(w7a, w5, ~s2);
and g23(w7b, w6, s2);
or g24(y, w7a, w7b);
endmodule


	
