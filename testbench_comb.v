`timescale 10ns/1ns
`include "comb_prim.v"
module testbench_comb();
  reg p_A,p_B,p_C,p_D;
  wire p_Y;
  comb_prim test_1(.A(p_A),.B(p_B),.C(p_C),.D(p_D),.Y(p_Y));
  
  integer k; 
  initial begin
    {p_A,p_B,p_C,p_D}=4'b0;
    k=0;
    while(k<20)begin   
      #10 {p_A,p_B,p_C,p_D}={p_A,p_B,p_C,p_D}+1'b1;
      k=k+1;
      
    end
  end
  
  initial
  begin
    $monitor("time:%0000tns,",$time,"{p_A,p_B,p_C,p_D}:%4b,p_Y:%1b",
    {p_A,p_B,p_C,p_D},p_Y);
  end  
endmodule