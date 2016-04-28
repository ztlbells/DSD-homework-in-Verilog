module BCD2Excess3(output reg [3:0]dat_out,input [3:0]dat_in);
  always@(*)
    case(dat_in)
      4'b0000:dat_out=4'b0011;
      4'b0001:dat_out=4'b0100;
      4'b0010:dat_out=4'b0101;
      4'b0011:dat_out=4'b0110;
      4'b0100:dat_out=4'b0111;
      4'b0101:dat_out=4'b1000;
      4'b0110:dat_out=4'b1001;
      4'b0111:dat_out=4'b1010;
      4'b1000:dat_out=4'b1011;
      4'b1001:dat_out=4'b1100;
      default:dat_out=4'b0011;
    endcase
endmodule
      