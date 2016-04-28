module mux2x1(input [1:0]din,input sel,output dout);
  bufif0 u1(dout,din[0],sel);
  bufif1 u2(dout,din[1],sel);
  
endmodule
