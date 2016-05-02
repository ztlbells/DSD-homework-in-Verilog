module decoder16b(output [2:0]segment,input [15:0]din);
  assign segment=din[15:13];
endmodule