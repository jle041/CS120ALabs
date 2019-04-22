`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:54:09 11/22/2017
// Design Name:   laser_surgery_sys
// Module Name:   D:/OneDrive/UCR/Programs/Xilinx/EE120A/lab6/Laser_Surgery_System/Laser_Surgery_System_tb.v
// Project Name:  Laser_Surgery_System
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: laser_surgery_sys
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Laser_Surgery_System_tb;

	// Inputs
	reg b;
	reg clk;
	reg reset;

	// Outputs
	wire light;

	// Instantiate the Unit Under Test (UUT)
	laser_surgery_sys uut (
		.b(b), 
		.clk(clk), 
		.reset(reset), 
		.light(light)
	);

	initial begin
		// Initialize Inputs
		b = 0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#40 reset = 0;
		
//

		b = 0;
		clk = 1;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#40 reset = 0;
		
//			
	
		b = 1;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#40 reset = 0;

//
	
		b = 1;
		clk = 1;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#40 reset = 0;



	end
   always
		#20 clk = ~clk;
endmodule

