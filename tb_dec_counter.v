`timescale 10ns/1ns
`include "dec_counter.v"
//module dec_counter(output reg [3:0]count,input clk,reset);
module tb_dec_counter();
  wire [3:0]p_count;
  reg p_clk,p_reset;
  dec_counter test_4(p_count,p_clk,p_reset);
  initial begin
    p_clk=1'b0;
    forever #10 p_clk=~p_clk;
  end
  initial begin
    p_reset=1'b0;
    #50 p_reset=~p_reset;
    #200 p_reset=~p_reset;
  end
  initial
    begin
    $monitor("time:%0000tns,",$time,"count:%4b",p_count);
  end  
endmodule

