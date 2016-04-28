`timescale 1ns/1ns
module case_mod(input s,output reg [3:0]t);
  casez(s)
    1'b0:t=4'b0001;
    1'b1:t=4'b0010;
    1'bx:t=4'b0100;
    1'bz:t=4'b1000;
  endcase
endmodule