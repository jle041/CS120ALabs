`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module register_logic(
  input clk, 
  input reset,
  input enable , 
  input [4:0] Data ,  
  output reg [4:0]  Q ) ;   
 
  always @(posedge clk )  
  begin 
		if (reset) begin 
			Q = 5'd0;  
		end
	   if (enable) begin 
			Q = Data;  
		end  
  end  
endmodule
