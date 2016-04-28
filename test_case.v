`timescale 1ns/1ns
module test_case;
  reg [3:0]t;
  reg [3:0]s;
  initial
  begin
    s=4'b0001;
    #100 s=4'b0001;
    #100 s=4'b0010;
    #100 s=4'b0100;
    #100 s=4'b1000;
    #100 s=4'b1111;
  end
  
  always@(s)
  begin
    casex(s)
    4'bxxx1:t=4'b0001;
    4'bxx1x:t=4'b0010;
    4'bx1xx:t=4'b0100;
    4'b1xxx:t=4'b1000;
    endcase
  end
endmodule
