`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/04 14:49:03
// Design Name: 
// Module Name: SHIFTER_COMBINATION_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//module SHIFTER_COMBINATION(X,PCADD4,Sh);
module SHIFTER_COMBINATION_test;
    reg [25:0]X;
    reg [31:0]PCADD4;
    wire [31:0]Sh;
    SHIFTER_COMBINATION uut(.X(X),.PCADD4(PCADD4),.Sh(Sh));
	initial begin
       //≤‚ ‘1
        X=26'b01010010101010101010101010;
        PCADD4=32'b10101010101010101010101010101010;
        #20;
        //≤‚ ‘2
        X=32'b11010010101010101010101011;
        PCADD4=32'b10101010101010111110101010101010;
	end
endmodule
