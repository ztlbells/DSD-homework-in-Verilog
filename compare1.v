//file:compare1.v
`timescale 10ns/1ns
 
 module compare1b(y,b,a);
   output y;
   input a,b;   
   assign y=(a==b)?1:0;
   
endmodule

