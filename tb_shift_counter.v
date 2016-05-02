`timescale 10ns/1ns
`include "shift_counter.v"
module tb_shift_counter();
  //module shift_counter(output reg [7:0]count,input clk,reset);
  wire[7:0]p_count;wire p_j;
  reg p_clk,p_reset;
  shift_counter test_c(p_j,p_count,p_clk,p_reset);
  initial begin
    p_clk=1'b0;
    forever #10 p_clk=~p_clk;
  end
  initial begin
    p_reset=1'b0;
    #130 p_reset=1'b1;
    #10 p_reset=1'b0;
  end
  initial 
  $monitor("time:%0000tns",$time,"count:%8b",p_count);
endmodule