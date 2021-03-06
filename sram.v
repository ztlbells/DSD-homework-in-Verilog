module sram(dout,din,addr,wr,rd,cs);
  //????????????????????????????????
  output reg [7:0]dout;
  input [7:0]din,addr;
  //wr:?????rd??????cs???????
  //cs=1? posedge wr ?din??addr????????
  //cs=1? rd=0? addr??????????dout??
  input wr,rd,cs;
  //256*8RAM
  reg [7:0]storage[255:0];
  always @(posedge wr or ~rd)
    if(cs)
      if(wr)
        storage[addr]<=din;
      else if(~rd)
        dout<=storage[addr];
    else if(cs==0)
      //cs=0,??????????
      dout<=8'bz;
endmodule