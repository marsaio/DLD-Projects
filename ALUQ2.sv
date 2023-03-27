`timescale 1ns/1ns

module alu(
           input [7:0] A,B,  // ALU 8-bit Inputs                 
           input [3:0] ALU_Sel,// ALU Selection
           output [7:0] ALU_Out, // ALU 8-bit Output
           output CarryOut // Carry Out Flag
    );
    reg [7:0] w;
    wire [8:0] tmp;
    assign ALU_Out = w; // ALU out
    assign tmp = {1'b0,A} + {1'b0,B};
    assign CarryOut = tmp[8]; // Carryout flag
    always @(*)
    begin
        case(ALU_Sel)
        3'b000: 
           w = A + B ;    
        3'b001: 
           w = A + (B<<<1);   
      //  3'b010: 
       //    w = A<<1;       
         3'b011: 
           w = A +(B >>> 1);   
         3'b100: 
           w = 8'b0;           
         3'b101: 
           w= A | B;             
         3'b110: 
           w = A & B;
          3'b111: 
           w = B <<<1;
          
          
           
          default: w = A + B ; 
        endcase
    end

endmodule