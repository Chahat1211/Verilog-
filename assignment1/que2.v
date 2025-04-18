//gate level 

module que2(input x1, x2, x3, x4, output f);
wire y1, y2 ,y3;
wire notx1, notx3;
not g1(notx1, x1);
not g2(notx3, x3);
and g3(y1, notx1, notx3);
and g4(y2, x2,x3,x4);
and g5(y3, x1,x2,x3);
or g6(f, y1,y2,y3);
endmodule

/* can be done using behavioral 

always @(*) begin 
	f = (~x1&~x3) | (x2&x3&x4) | (x1&x2&x3);
end

can be done using data flow 

assign f = (~x1&~x3) | (x2&x3&x4) | (x1&x2&x3);
*/

