`timescale 10ns/1ns
`include "mux2x1.v"
module tb_mux2x1;
  reg [1:0]p_din;reg p_sel;
  wire p_dout;  
  initial begin
    p_din=2'b00;
    #10 p_din=p_din+1'b1;
    #10 p_din=p_din+1'b1;
    #10 p_din=p_din+1'b1;
    #10 p_din=p_din+1'b1;
  end
  initial begin
    p_sel=1'b0;
    #5 p_sel=~p_sel;#5 p_sel=~p_sel;
    #5 p_sel=~p_sel;#5 p_sel=~p_sel;
    #5 p_sel=~p_sel;#5 p_sel=~p_sel;
    #5 p_sel=~p_sel;#5 p_sel=~p_sel;
  end
  mux2x1 test(.din(p_din),.sel(p_sel),.dout(p_dout));
 initial
  begin
    $monitor("time:%0000tns,",$time,"data:%2b,sel:%1b,out:%1b",p_din,p_sel,p_dout);
  end  
endmodule  