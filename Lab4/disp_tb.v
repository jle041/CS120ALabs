disp_mux_main_bh uut (
		.clk(clk), 
		.reset(reset), 
		.sw0(sw0), 
		.sw1(sw1), 
		.sw2(sw2), 
		.sw3(sw3), 
		.an(an), 
		.sseg(sseg)
	);

	initial begin
		// Initialize Inputs
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b0;
			sw1 = 1'b0;
			sw2 = 1'b0;
			sw3 = 1'b0;
			#10 reset = 1'b0;

			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b0;
			sw1 = 1'b0;
			sw2 = 1'b0;
			sw3 = 1'b1;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b0;
			sw1 = 1'b0;
			sw2 = 1'b1;
			sw3 = 1'b0;
			#10 reset = 1'b0;

			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b0;
			sw1 = 1'b0;
			sw2 = 1'b1;
			sw3 = 1'b1;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b0;
			sw1 = 1'b1;
			sw2 = 1'b0;
			sw3 = 1'b0;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b0;
			sw1 = 1'b1;
			sw2 = 1'b0;
			sw3 = 1'b1;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b0;
			sw1 = 1'b1;
			sw2 = 1'b1;
			sw3 = 1'b0;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b0;
			sw1 = 1'b1;
			sw2 = 1'b1;
			sw3 = 1'b1;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b1;
			sw1 = 1'b0;
			sw2 = 1'b0;
			sw3 = 1'b0;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b1;
			sw1 = 1'b0;
			sw2 = 1'b0;
			sw3 = 1'b1;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b1;
			sw1 = 1'b0;
			sw2 = 1'b1;
			sw3 = 1'b1;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b1;
			sw1 = 1'b1;
			sw2 = 1'b0;
			sw3 = 1'b0;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b1;
			sw1 = 1'b1;
			sw2 = 1'b0;
			sw3 = 1'b1;
			#10 reset = 1'b0;
			
			clk = 1'b0;
			reset = 1'b1;
			sw0 = 1'b1;
			sw1 = 1'b1;
			sw2 = 1'b1;
			sw3 = 1'b1;
			#10 reset = 1'b0;

	end
      
endmodule

