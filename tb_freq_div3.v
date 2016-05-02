//module freq_div3(output reg clk_out, input clk_in, reset);
`timescale 10ns/1ns
`include "freq_div3.v"
module tb_freq_div();
  reg p_clk_in,p_reset;
  freq_div3 test_3(p_clk_out, p_clk_in,p_reset);
  initial begin
    p_clk_in=1'b0;
    forever #10 p_clk_in=~p_clk_in;
  end
  initial begin
    p_reset=1'b0;
    #50 p_reset=~p_reset;
    #200 p_reset=~p_reset;
  end
endmodule