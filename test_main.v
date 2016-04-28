`timescale 10ns/1ns
`include "compare_8b.v"
module test_compare_8b;
  reg [7:0]p_a;
  reg [7:0]p_b;
  wire p_y;
  compare_8b xixi(.a(p_a),.b(p_b),.y(p_y));
  initial
  begin
    #10  p_a=8'b0000_1111;p_b=8'b0000_0000;
    #10  p_a=8'b0000_0000;p_b=8'b0000_1111;
    #10  p_a=8'b0000_1111;p_b=8'b0000_1111;
    #10  $stop;
  end
  initial
  begin
    $monitor("time:%tns",$time,"----->a=%b,b=%b,y=%b",p_a,p_b,p_y);
  end
endmodule