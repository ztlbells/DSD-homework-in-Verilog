
module JK_FF(output reg q, input clk,reset,j,k);
  
  always@(posedge clk)begin
    if(reset)
      q<=1'b0;  
  else begin
    case({j,k})
      2'b00:;
      2'b01:q<=0;
      2'b10:q<=1;
      2'b11:q<=~q;
      //???????
      default:;
    endcase
  end
end
endmodule
      