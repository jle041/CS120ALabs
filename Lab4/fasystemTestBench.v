`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:00 02/21/2018 
// Design Name: 
// Module Name:    fasystemTestBench 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fasystemTestBench(
	  reg clk;
	  reg reset;
	  reg call_button;
	  reg cancel_button;
	  reg light_state;
    );

fasystem_bh(
.clk(clk),
.reset(reset), 
.call_button(call_button) ,
.cancel_button(cancel_button) ,
.light_state(light_state)  
    );
	 
initial begin
//first case
	clk = 0;
	reset = 0;
	call_button = 1;
	cancel_button = 0;
	#10 rst = 0;
//second case
	clk = 0;
	reset = 0;
	call_button = 0;
	cancel_button = 1;
	#10 rst = 0;
//third case
	clk = 0;
	reset = 0;
	call_button = 1;
	cancel_button = 1;
	#10 rst = 0;


end
always #5 clk =~clk;	
endmodule
