`timescale 1ns / 1ps

// UCR CS 120 
// Decoder. Behavioral description   
// Initial implementation  4x1 Mux 

module mux_bh(

// Ports I/O 

            input wire s1, 
            input wire s0, 
            input wire i0, 
            input wire i1, 
            input wire i2, 
            input wire i3, 
            output reg d 
            ) ; 

always @(*) begin 
    
    d = 1'b0 ; 

    case ( {s1,s0} )  
    
        2'b00 : d = i0 ;  
        // More code here  
    
    endcase 

end 

endmodule
