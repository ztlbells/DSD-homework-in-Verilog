module seq_detect(output reg flag,input din,clk);
  integer state;
  always@(negedge clk)
    case(state)   
      0:state<=(din)?1:0;
      1:state<=(din)?2:5;
      2:if(din)
          state<=4;
        else begin
          state<=3;
          flag<=1'b1;
        end
      3:begin 
          flag<=1'b0;
          state<=(din)?6:0;
        end
      4:state<=(din)?1:5;
      5:state<=(din)?6:0;
      6:if(din)begin
          state<=7;
          flag<=1'b1;
        end
        else 
          state<=5;
      7:begin 
          flag<=1'b0;
          state<=(din)?4:3;
        end
      //8:start
      8:state<=(din)?4:0;
      //default:???
      default:begin
        flag<=1'b0;
        state<=8;
      end 
  endcase
  endmodule 
