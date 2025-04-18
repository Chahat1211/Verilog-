module tb;
reg[2:0] x ,y ;
initial begin 
	x = 3'b001;
	y = 3'b010;

	$display("Q.1 Before execution: x = %b, y= %b", x, y);
	
	y = x && y;
	x = y & x;

	$display("Q.1 After execution: x = %b, y= %b", x, y);

	x =3'b001;
	y = 3'b010;

	$display("Q.2 Before execution: x = %b, y= %b", x, y);
	
	x <= (y) ? y : x;
	y <= (x) ? x : y;

	#1;

	$display("Q.2 After execution: x = %b, y= %b", x, y);

	x =3'b001;
	y = 3'b010;

	$display("Q.3 Before execution: x = %b, y= %b", x, y);
	
	x = (y) ? y : x;
	y = (x) ? x : y;

	$display("Q.3 After execution: x = %b, y= %b", x, y);
	
	x =3'b001;
	y = 3'b010;

	$display("Q.4 Before execution: x = %b, y= %b", x, y);
	
	x <= x << 1;
	x[0] <= x[2];

	#1;

	$display("Q.4 After execution: x = %b, y= %b", x, y);

	
	x =3'b001;
	y = 3'b010;

	$display("Q.5 Before execution: x = %b, y= %b", x, y);
	
	x = x && (~y);
	y = x + y;

	$display("Q.5 After execution: x = %b, y= %b", x, y);

	#50 $finish;
	

end
endmodule
	

