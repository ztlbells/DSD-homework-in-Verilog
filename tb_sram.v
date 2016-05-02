`timescale 10ns/1ns
`include "sram.v"
module tb_sram();
  //module sram(dout,din,addr,wr,rd,cs)
  reg [7:0]p_din,p_addr;
  reg p_wr,p_rd,p_cs;
  wire [7:0]p_dout;
  sram test_d(.dout(p_dout),.din(p_din),.addr(p_addr),.wr(p_wr),.rd(p_rd),.cs(p_cs));
  initial begin
    p_wr=1'b0;
    forever 
      #10 p_wr=~p_wr;
    end
  initial begin
    p_rd=1'b1;
    forever
      #20 p_rd=~p_rd;
  end
  initial begin
    p_cs=1'b0;
    #20 p_cs=~p_cs;
  end
  initial begin
    p_din=8'b0000_0000;
    forever #100 p_din=p_din+1'b1;
  end
  initial begin
    p_addr=8'b0000_0000;
    forever #100 p_addr=p_addr+1'b1;
  end
  initial begin
    $monitor("time:%0000tns",$time," dout:%8b,din:%8b,addr:%8b,wr:%1b,rd:%1b,cs:%1b",
              p_dout,p_din,p_addr,p_wr,p_rd,p_cs);
  end
endmodule