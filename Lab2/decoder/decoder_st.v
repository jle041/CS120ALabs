`timescale 1ns / 1ps

// UCR CS 120 
// Decoder. Behavioral description   
// Initial implementation  3x8 Decoder 

module decoder_st(
// I/0 ports 
 input  wire enable , 
 input  wire a , 
 input  wire b , 
 input  wire c , 
 output wire d0, 
 output wire d1, 
 output wire d2, 
 output wire d3, 
 output wire d4, 
 output wire d5, 
 output wire d6, 
 output wire d7 

 );

// Using the and4 module to set all outputs 

and4 c1(enable, ~a, ~b, ~c, d0) ; 
// your code here

endmodule
