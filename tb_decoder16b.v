`timescale 10ns/1ns
`include "decoder16b.v"
module tb_decoder16b();
  //module decoder16b(output [2:0]segment,input [15:0]din);
  wire [2:0]p_segment;
  reg [15:0]p_din;
  decoder16b test_f(p_segment,p_din);
  initial begin
    p_din=16'b0;
    forever #10 p_din=p_din+16'b0010_0000_1000_0000;
  end
  initial 
    $monitor("din=%16b,segment=%3b",p_din,p_segment);
endmodule