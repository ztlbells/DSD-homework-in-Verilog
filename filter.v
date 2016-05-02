`include"parallel_shift_reg_4b.v"
`include "JK_FF.v"
module filter(input sig_in,clock,reset,output sig_out);
//module JK_FF(output reg q, input clk,reset,j,k);
//parallel_shift_reg_4b(output reg[3:0]dout,input clk,reset,din);
  wire [3:0]p_reg;
  parallel_shift_reg_4b test_0(p_reg,clock,reset,sig_in);
  and u_up(w_up,p_reg[1],p_reg[2],p_reg[3]);
  and u_down(w_down,~p_reg[1],~p_reg[2],~p_reg[3]);
  JK_FF test_1(sig_out,clock,reset,w_up,w_down);
endmodule