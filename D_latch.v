module D_Latch(output reg Q, input D, input C );
always @(*) 
  if (C) 
    Q <= D;
endmodule