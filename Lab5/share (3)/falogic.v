`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module falogic(
 output r, 
 input x, 
 input y, 
 input cin 
    );

xor cx1 ( t1, x,y  ); 
xor cx2 ( r, t1, cin  ); 

endmodule
