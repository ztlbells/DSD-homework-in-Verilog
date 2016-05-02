`timescale 10ns/1ns
`include "counter8b_updown.v"
module tb_counter8b_updown();
  wire [7:0]p_count;
  reg p_clk,p_reset,p_dir;
  counter8b_updown test_a(p_count,p_clk,p_reset,p_dir);
  initial begin
    p_clk=1'b0;
    forever #10 p_clk=~p_clk;
  end
  initial begin
    p_reset=1'b0;
    #50 p_reset=~p_reset;
    #10 p_reset=~p_reset;
    #100 p_reset=~p_reset;
    #10 p_reset=~p_reset;
  end
  initial begin
    p_dir=1;
    #200 p_dir=~p_dir;
    #400 p_dir=~p_dir;
  end
  initial
    begin
    $monitor("time:%0000tns,",$time,"count:%8b",p_count);
  end  
endmodule
