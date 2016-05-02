`timescale 10ns/1ns
`include "ALU.v"
module tb_ALU();
  //module ALU(output reg [7:0]sum,reg c_out,input [2:0]oper,[7:0]a,[7:0]b,c_in);
  reg [7:0] p_a,p_b;
  reg [2:0] p_oper;
  reg p_cin;
  wire p_cout;
  wire [7:0] p_sum;

  ALU test_b(p_sum,p_cout,p_cin,p_oper,p_a,p_b);
  initial begin
    p_a=8'b0111_0101;
    forever #10 p_a=p_a+1'b1;
  end
  
  initial begin
    p_b=8'b1111_0000;
    forever #20 p_b=p_b-1'b1;
  end
  
  initial begin
    p_cin=1'b0;
    forever #50 p_cin=~p_cin;
  end
  
  initial begin
    p_oper=3'b0;
    forever #10 p_oper=p_oper+1'b1;
  end
  
  initial
  $monitor($time,"  oper=%3b a=%8b b=%8b cin=%b sum=%8b cout=%b",
  p_oper, p_a, p_b, p_cin, p_sum, p_cout);
 
endmodule