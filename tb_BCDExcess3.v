`timescale 10ns/1ns
`include "BCD2Excess3.v"
//BCD2Excess3(output reg [3:0]dat_out,input [3:0]dat_in);
module tb_BCD2Excess3();
  reg [3:0]p_dat_in;
  wire [3:0]p_dat_out;
  
  integer k;
  initial begin
    p_dat_in=4'b0;
    k=0;
    while(k<20)begin
      #10 p_dat_in=p_dat_in+1'b1;
      k=k+1;
      if(k==10)begin
        k=0;
        p_dat_in=4'b0;
      end
    end
  end
  BCD2Excess3 test_2(.dat_out(p_dat_out),.dat_in(p_dat_in));
  
  initial
  begin
    $monitor("time:%0000tns,",$time,"dat_out:%4b,dat_in:%4b",
    p_dat_out,p_dat_in);
  end  
endmodule