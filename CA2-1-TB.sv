`timescale 1ns / 1ps

module CLATB();

    // Inputs
    reg[7:0] dataA;
    reg[7:0] dataB;
    reg carryIn;

    // Outputs
    wire carryOut;
    wire[7:0] dataOut;

    // Instantiate the 8-bit CLA
    CLAdder CLA21UT (.dataA(dataA),.dataB(dataB),.carryIn(carryIn)/*,.carryOut(carryOut),
    			.dataOut(dataOut)*/ );

 
initial begin
       
    dataA = 8'd1; dataB = 8'd2; carryIn = 1'd1;
    
    #100 dataA = 8'd2; dataB = 8'd5; carryIn = 1'd0;
    
    #100 dataA = 8'd5; dataB = 8'd6; carryIn = 1'd0;

    #300 $stop;
    
end
endmodule
