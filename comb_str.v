module com_str(input A,B,C,D, output Y);
  not u1(w1,D);
  or u3(w3,A,D);
  and u4(w2,B,C,w1);
  not u2(w4,w3);
  and u5(Y,w4,w2);
endmodule
