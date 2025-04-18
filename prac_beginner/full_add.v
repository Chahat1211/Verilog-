module fa(input a, b, cin, output reg sum,output reg cout);
  always @(a or b or cin) begin
    {cout,sum} = a + b + cin;
  end
endmodule
