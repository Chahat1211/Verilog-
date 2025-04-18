// Gate level modeling 

module que1(input a, b, output x);
wire y1,y2;
wire nota,notb;
not g1(nota,a);
not g2(notb,b);
and g3(y1, a, notb);
and g4(y2, nota, b);
or g5(x, y1,y2);
endmodule






