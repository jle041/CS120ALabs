`timescale 1ns / 1ps

// UCR CS 120 
// Decoder. Behavioral description   
// Initial implementation  And 3 Inputs Enable 

module and4(
            input enable, 
            input a, 
            input b, 
            input c, 
            output r 
            );

    assign r = enable & a & b & c ; 

endmodule
