`timescale 10ns/1ns
`include "mux4x1.v"
module tb_mux4x1;
  //mux4x1(output dout, input [3:0]din, input [1:0]sel);
  reg [3:0]p_din;
  reg [1:0]p_sel;
  wire p_dout;
  mux4x1 test(.dout(p_dout),.din(p_din),.sel(p_sel));
  integer k;
  integer j;
  initial begin
    p_din=4'b0;
    k=0;
    while(k<20)begin
      #10 p_din=p_din+1'b1;
      k=k+1;
    end
  end
  initial begin 
    p_sel=2'b0;
    j=0;
    while(j<40)begin
      #5 p_sel=p_sel+1'b1;
      j=j+1;
    end
  end
 initial
  begin
    $monitor("time:%0000tns,",$time,"data:%4b,sel:%2b,out:%1b",p_din,p_sel,p_dout);
  end  
endmodule