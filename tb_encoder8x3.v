`timescale 10ns/1ns
`include "encoder8x3.v"

module tb_encoder8x3;
  reg [7:0]p_data;
  wire [2:0]p_code;
  reg d_appendix;
  initial begin 
    d_appendix=1'b0;
    p_data=8'b0000_0001;
    while(!d_appendix)
    begin
      d_appendix=p_data[7];
      #10 p_data={p_data[6:0],d_appendix};
    end
  end
  
  encoder8x3 test(.data(p_data),.code(p_code));
  
  initial
  begin
    $monitor("time:%0000tns,",$time,"data:%8b,code:%3b",p_data,p_code);
  end    
endmodule    