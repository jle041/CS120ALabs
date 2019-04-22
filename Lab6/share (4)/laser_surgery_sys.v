`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module laser_surgery_sys #(parameter NBITS = 32)(
	input b ,
	input clk,
	input reset,
	output reg light);

wire timer;
reg rest_count;
	
reg [1:0] current_state ; 
reg [1:0] next_state ; 

localparam OFF   = 2'b00 ; 
localparam START = 2'b01 ; 
localparam ON    = 2'b10 ; 

wire [NBITS-1:0] cnt_ini ;  
wire [NBITS-1:0] cnt_rst ; 

// --------------------------------------
// Sequential logic 
// --------------------------------------

always @(posedge clk) begin
	// your code  
	current_state = next_state;
end 

// --------------------------------------
// Comb. Logic 
// --------------------------------------

assign cnt_ini = 0 ; // Some value
assign cnt_rst = 32'b00001110111001101011001010000000; // Some value, used for 10 secs ( 25 MHZ internal clock )

// --------------------------------------
// Comb. Logic - FSM  
// --------------------------------------
always @( current_state or b) begin
	case (current_state) 
		OFF : begin  
				// your code
			
			light = 1'b0 ;
			rest_count = 1'b1 ;
			if (!b)
				next_state = OFF;
			if (b)
				next_state = START;

			end 
		  
		START : begin 
				// your code

			light = 1'b0 ;
			rest_count = 1'b0 ;
			next_state = ON;
	
			end 
			
		ON:  begin 
				// your code
				
			light = 1'b1 ;
			rest_count = 1'b0 ;
			if (timer)
				next_state = OFF;
			if (!timer)
				next_state = ON;
				
			end 
			
		default:  begin 
 				// your code
				light = 1'b0 ;
				rest_count = 1'b0 ;
				next_state = OFF ;

			end 
	endcase
end 

// --------------------------------------
// Timer instantiation 
// --------------------------------------

timer_st #( .NBITS(NBITS) ) timerst (
		.timer(timer), 
		.clk(clk), 
		.reset(rest_count) , 
		.cnt_ini(cnt_ini) , 
		.cnt_rst(cnt_rst)
	);
	
endmodule
