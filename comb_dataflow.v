module comb_dataflow(input A,B,C,D, output Y);
  wire w1,w2,w3,w4;
  assign w1=~D,w3=(A|D);
  assign w2=(w1&C&B),w4=~w3;
  assign Y=(w4&w2);
endmodule
