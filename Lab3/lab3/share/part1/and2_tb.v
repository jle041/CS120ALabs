`timescale 1ns / 1ps
module and2_tb;

	// Inputs
	reg i1;
	reg i2;

	// Outputs
	wire d;

	// Instantiate the Unit Under Test (UUT)
	and_gate uut (
		.i1(i1), 
		.i2(i2), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		i1 = 0;
		i2 = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		i1 = 0;
		i2 = 1;
		// Wait 100 ns for global reset to finish
		#100;
//added
		i1 = 1;
		i2 = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		i1 = 1;
		i2 = 1;
		// Wait 100 ns for global reset to finish
		#100;


		//more test cases

	end
      
endmodule

