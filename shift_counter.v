module shift_counter(output reg j,[7:0]count,input clk,reset);
  always@(posedge clk)
  if(reset)begin
    count<=8'b0000_0001;
    j=1'b0;
    //j=0????????
    //j=1????????
  end
  else  begin
    case(j)
      0:begin 
          if(count[7]==1)begin
            j<=~j;
            count[6:0]<=count[7:1];
            count[7]<=count[0];end
          else begin
            count[7:1]<=count[6:0];
            count[0]<=count[7];end
        end
      1:begin 
        if(count[0]==1)begin
            j<=~j;
            count[7:1]<=count[6:0];
            count[0]<=count[7];end
        else begin 
            count[6:0]<=count[7:1];
            count[7]<=count[0];end
        end
    endcase    
  end
endmodule
