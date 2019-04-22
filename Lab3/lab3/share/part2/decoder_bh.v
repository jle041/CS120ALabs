`timescale 1ns / 1ps

// UCR CS 120 
// Decoder. Behavioral description   
// Initial implementation  3x8 Decoder 

module decoder_bh(

// I/0 ports 

 input wire enable , 
 input wire a , 
 input wire b , 
 input wire c , 
 output reg d0, 
 output reg d1, 
 output reg d2, 
 output reg d3, 
 output reg d4, 
 output reg d5, 
 output reg d6, 
 output reg d7 

 );

// Internal wire 
wire [3:0] bundle ; 
assign bundle = {enable , a, b, c } ; 

// Behavioral description 

always @(*) begin 
  
  d0 = 1'b0 ; 
  d1 = 1'b0 ; 
  d2 = 1'b0 ; 
  d3 = 1'b0 ;  
  d4 = 1'b0 ;  
  d5 = 1'b0 ;  
  d6 = 1'b0 ;  
  d7 = 1'b0 ;  

// Setting the correct output 

  case (bundle)
  
	  4'b1000: d0 = 1'b1 ; 

	  // more codes here 
	  
	  default : begin 
		d0 = 1'b0 ; 
	  end 
  
  endcase 

end    


endmodule
