module comb_behavior(input A,B,C,D, output reg Y);
  reg w1,w2,w3,w4;
  always@(*) begin
    w1=~D;
    w3=(A|D);
    w2=(w1&C&B);
    w4=~w3;
    Y=(w4&w2);
  end
endmodule
