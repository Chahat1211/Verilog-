module fa(input a, b, cin, output cout,sum);
wire x,y,z;
xor g1(sum, a, b, cin);
and g2(x, a, b);
and g3(y, b, cin);
and g4(z, cin, a);
or g5(cout ,x,y,z);
endmodule
