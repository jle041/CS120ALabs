`timescale 1ns / 1ps

module mux_st(

// Ports I/O 
input wire s1, 
input wire s0, 
input wire i0, 
input wire i1, 
input wire i2, 
input wire i3, 
output wire d 
);

// Intermedia ANDs 

wire   r1, r2, r3, r4 ; 

and3 c1 ( ~s1,~s0,  i0,  r1 ) ;
// your code here

assign d = r1 | r2 | r3 | r4 ; 

endmodule
