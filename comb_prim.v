primitive udp_hehe(output out,input a,b,c,d);
  table
    //a b c d : out;
      0 0 0 0 : 0;
      0 0 0 1 : 0;
      0 0 1 0 : 0;
      0 0 1 1 : 0;
      0 1 0 0 : 0;
      0 1 0 1 : 0;
      0 1 1 0 : 1;
      0 1 1 1 : 0;
      1 0 0 0 : 0;
      1 0 0 1 : 0;
      1 0 1 0 : 0;
      1 0 1 1 : 0;
      1 1 0 0 : 0;
      1 1 0 1 : 0;
      1 1 1 0 : 0;
      1 1 1 1 : 0;
  endtable
endprimitive

module comb_prim(input A,B,C,D, output Y);
udp_hehe(Y,A,B,C,D);
endmodule