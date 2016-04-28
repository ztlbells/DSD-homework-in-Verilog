//file compare_8b.v
`timescale 10ns/1ns
module compare_8b(output y,input [7:0]a,input [7:0]b);
  assign y=(a>=b)?1:0;
endmodule
