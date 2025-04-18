module mux(input i0, i1, i2, i3, s0, s1,output out);
wire y0,y1,y2,y3;
and g1(y0, i0,~s0,~s1);
and g2(y1, i1, ~s0,s1);
and g3(y2, i2,s0,~s1);
and g4(y3, i3, s0,s1);

or g5(out, y1, y2, y3, y0);

endmodule;


