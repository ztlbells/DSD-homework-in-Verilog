module freq_div3(output reg clk_out, input clk_in, reset);
  reg [1:0]i;
    always@(posedge clk_in or negedge clk_in)begin
      if(reset)begin
        i=2'b0;
        clk_out<=1'b0;
      end
      else begin
        if(i==2'b11)begin
          clk_out<=~clk_out;
          i=2'b0;
        end
        i=i+1'b1;
      end
    end
endmodule