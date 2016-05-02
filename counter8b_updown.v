module counter8b_updown(output reg[7:0] count, input clk,reset,dir);
  always@(posedge clk or posedge reset)begin
    if(reset)
      count<=8'b0;
    else
      case(dir)
        1:count<=count+1'b1;
        0:count<=count-1'b1;
        default:;
      endcase
  end
endmodule
