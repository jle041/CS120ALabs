`timescale 1ns / 1ps

module Main(
input [2:0] in1,
input [2:0] in2,
input [1:0] sele,
output reg [3:0] out);
wire [3:0] temp1;
wire [3:0] temp2; 
wire [3:0] temp3;
wire [3:0] temp4;


add a1(in1,in2,temp1);
sub a2(in1,in2,temp2);
equal a3(in1,in2,temp3);
shift a4(in1,temp4);

always @(*) begin
	case (sele)
	
	2'b00: out = temp1;
	
	2'b01: out = temp2;
	
	2'b10: out = temp3;
	
	2'b11: out = temp4;
	endcase


end


endmodule





module add( input [2:0] a, input [2:0] b, output [3:0] c);

assign c = a + b;

endmodule



module sub(input [2:0] a, input [2:0] b, output [3:0] c);

wire [2:0] d;

assign d = a - b;
assign c = d;
endmodule


module equal(input [2:0] a, input [2:0] b, output [3:0] c);

assign c[3] = 1'b0;
assign c[2] = a[2]~^b[2];
assign c[1] = a[1]~^b[1];
assign c[0] = a[0]~^b[0];

endmodule

module shift(input [2:0] a, output [3:0] c);

assign c = a>>1;

endmodule



 



