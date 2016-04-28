`timescale 10ns/1ns
`include "compare1b.v"

module tb_compare1b;
  wire p_y;
  reg p_a,p_b;
  compare1b m_compare1b(.y(p_y),.a(p_a),.b(p_b));  
  initial
  begin
    p_a=0;
    p_b=0;
    #100 p_a=0;p_b=1;
    #100 p_a=1;p_b=0;
    #100 p_a=1;p_b=1;
    #100 $stop;
  end
  initial 
  begin
    $monitor("?????%tns",$time,"------->y=%b,a=%b,b=%b",p_y,p_a,p_b);
  end
endmodule
