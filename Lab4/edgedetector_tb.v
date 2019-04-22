`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:51 02/21/2018
// Design Name:   edgedetector_bh
// Module Name:   C:/Users/Robert Yee/Desktop/X 120a/Lab4/edgedetector_tb.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: edgedetector_bh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module edgedetector_tb;

	// Inputs
	reg clk;
	reg reset;
	reg signal;

	// Outputs
	wire outedge;

	// Instantiate the Unit Under Test (UUT)
	edgedetector_bh uut (
		.clk(clk), 
		.reset(reset), 
		.signal(signal), 
		.outedge(outedge)
	);

	initial begin
		// Initialize Inputs
//1	
		clk = 1'b0;
		reset = 1'b1;
		signal = 1'b0;
		#10 reset = 1'b0;
//2	
		clk = 1'b0;
		reset = 1'b1;
		signal = 1'b1;
		#10 reset = 1'b0;
	end
always #5 clk = ~clk;      
endmodule

