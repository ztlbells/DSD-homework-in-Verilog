`timescale 10ns/1ns
`include"filter.v"
module tb_filter();
  //module filter(input sig_in,clock,reset,output sig_out);
  wire p_sig_out;
  reg p_clk,p_reset,p_sig_in;
  initial begin
    p_clk=1'b1;
    forever #10 p_clk=~p_clk;
  end
  
  initial begin
    p_reset=1'b0;
    //#60 p_reset=~p_reset;
    //#65 p_reset=~p_reset;
  end
  
  initial begin
    p_sig_in=1'b1;
    forever #30 p_sig_in=~p_sig_in;
  end
   filter test_2(p_sig_in,p_clk,p_reset,p_sig_out);
   initial
    begin
    $monitor("time:%0000tns,",$time,"sig_out:%4b",p_sig_out);
  end  
endmodule