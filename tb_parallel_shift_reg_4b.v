`timescale 10ns/1ns
`include"parallel_shift_reg_4b.v"
module tb_parallel_shift_reg_4b();
  //parallel_shift_reg_4b(output reg[3:0]dout,input clk,reset,din);
  wire [3:0]p_dout;
  reg p_clk,p_reset,p_din;
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
    p_din=1'b1;
    forever #30 p_din=~p_din;
  end
   parallel_shift_reg_4b test_8(p_dout,p_clk,p_reset,p_din);
   initial
    begin
    $monitor("time:%0000tns,",$time,"dat_out:%4b",p_dout);
  end  
endmodule