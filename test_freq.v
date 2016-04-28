`timescale 1ns/100 ps
`include "freq_div.v"
`define T 2
module test_freq_div;
  reg p_clk_in,p_reset;
  wire p_clk_out;
  //module freq_div(output reg clk_out,input clk_in,input reset);
  freq_div haha(.clk_out(p_clk_out),.clk_in(p_clk_in),.reset(p_reset));
  initial
  begin 
    p_clk_in=1'b0;
    forever
    #`T p_clk_in=~p_clk_in;
  end
  
  initial
  begin
    p_reset=1'b0;
    #80 p_reset=1'b1;
    #120 p_reset=1'b0;
    #220 p_reset=1'b1;
    #10000 $stop;
  end
    
endmodule
    