`include "2x1mux.v"
module tb;
  reg a,b, sel;
  wire out;
  integer i;
  
  mux inst1(.a(a),.b(b),.sel(sel), .out(out));
  
  initial begin
    a<=0;
    b<=0;
    sel<=0;
    
    $monitor("a=%0b, b=%0b, sel=%0b, out= %0b", a,b,sel,out);
    
    for(i =0; i< 8; i = i+1) begin
      {a,b,sel} = i;
      #10;
    end
  end
endmodule
    
