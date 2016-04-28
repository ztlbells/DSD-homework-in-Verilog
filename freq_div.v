//file freq_div
`timescale 1ns/ 100ps
module freq_div(output reg clk_out,input clk_in,input reset);
  always@(posedge clk_in)
  begin 
    if(!reset)
      clk_out<=0;
      //reset simultaneously
  else
    clk_out<=~clk_out;
  end
endmodule