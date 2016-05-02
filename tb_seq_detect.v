//module seq_detect(output reg flag,input din,clk);
`timescale 10ns/1ns
`include "seq_detect.v"
module tb_seq_detect();
  wire p_flag;
  reg p_din,p_clk;
  seq_detect test_e(p_flag,p_din,p_clk);
  initial begin
    p_clk=1'b0;
    forever #10 p_clk=~p_clk;
  end
  //din:1_0110_1_0110_1111_011
  initial begin
    #5 p_din=1'b1;
    #20 p_din=1'b0;#20 p_din=1'b1;#20 p_din=1'b1;#20 p_din=1'b0;
    #20 p_din=1'b1;
    #20 p_din=1'b0;#20 p_din=1'b1;#20 p_din=1'b1;#20 p_din=1'b0;
    #20 p_din=1'b1;#20 p_din=1'b1;#20 p_din=1'b1;#20 p_din=1'b1;
    #20 p_din=1'b0;#20 p_din=1'b1;#20 p_din=1'b1;
  end
endmodule