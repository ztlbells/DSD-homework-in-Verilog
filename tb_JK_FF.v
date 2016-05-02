`timescale 10ns/1ns
`include "JK_FF.v"
//module JK_FF(output reg q, input clk,reset,j,k);
module tb_JK_FF();
  wire p_q;
  reg p_clk,p_reset,p_j,p_k;
  initial begin
    p_clk=1'b1;
    forever #10 p_clk=~p_clk;
  end
  
  initial begin
    p_reset=1'b0;
    #60 p_reset=~p_reset;
    #65 p_reset=~p_reset;
  end
  
  initial begin
    {p_j,p_k}=2'b0;
    forever #30 {p_j,p_k}={p_j,p_k}+1'b1;
  end
   JK_FF test_9(p_q,p_clk,p_reset,p_j,p_k);
   initial
    begin
    $monitor("time:%0000tns,",$time,"dat_out:%1b",p_q);
  end  
endmodule
