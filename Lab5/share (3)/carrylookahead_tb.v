`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

module carrylookahead_tb;

	// Inputs
	reg clk;
	reg enable;
	reg reset;
	reg cin;
	reg [3:0] x;
	reg [3:0] y;


	// Outputs
	wire cout;
	wire [3:0] r;
	
	reg [4:0] rx;
	
	integer c, i1, i2;
	reg flag; 

	// Instantiate the Unit Under Test (UUT)
	carrylookahead_bh uut (
		.clk(clk),
		.enable(enable),
		.reset(reset),
		.cin(cin), 
		.x(x), 
		.y(y), 
		.cout(cout), 
		.r(r)
	);

	initial begin
	
		// Initialize Inputs
		clk = 1'b0;
		reset = 1'b1;
		enable = 1'b0;
		
		#10
		reset = 1'b0;
		enable = 1'b1;

		for (c = 0; c < 2; c = c + 1) begin 
			for (i1=0; i1 < 16; i1 = i1 + 1) begin 
				for (i2=0; i2 < 16; i2 = i2 + 1) begin 
					x = i1;// your code 
					y = i2;// your code 
					cin = c;// your code 
					rx = x + y + c;// your code 
					
					#10;
				end
			end
		end
	end
	
	always@(*) begin
		if (clk)
			flag = (rx == {cout, r});
	end
	
	always #5 clk = ~clk;
	

      
endmodule

