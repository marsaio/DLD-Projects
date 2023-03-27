`timescale 1ns/1ns
 module CLAdder(input [7:0] dataA,dataB ,input carryIn ,output [7:0] dataOut, output carryOut);

assign #106 {carryOut,dataOut} = dataA ^ dataB ^ carryIn ;



endmodule  