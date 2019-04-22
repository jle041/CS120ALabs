`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// http://www.electronics-tutorials.ws/combination/comb_6.html

module bcdtoled_tb;

	// Inputs
	reg sw0;
	reg sw1;
	reg sw2;
	reg sw3;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	bcdto7led_bh uut (
	// bcdto7led_bh uut (
		.sw0(sw0), 
		.sw1(sw1), 
		.sw2(sw2), 
		.sw3(sw3), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g)
	);

	initial begin
	
		// Initialize Inputs
		sw3 = 0;	sw2 = 0;	sw1 = 0;		sw0 = 0;

		#100;
      $display("TC10 ");
		if ( {a,b,c,d,e,f,g} != 7'b111_1110 ) $display  ("Result is wrong %b ", {a,b,c,d,e,f,g});
	

		sw3 = 0;	sw2 = 0;	sw1 = 0;		sw0 = 1;
		#100;
      $display("TC11 ");
		if ( {a,b,c,d,e,f,g} != 7'b011_0000 ) $display  ("Result is wrong");

		// more test cases


	end
      
endmodule

