`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/04 14:46:12
// Design Name: 
// Module Name: ADDSUB_32_test
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


module ADDSUB_32_test;
    reg [31:0]X,Y;
    reg Sub;
    wire [31:0]S;
    wire Cout;
    ADDSUB_32 uut(.X(X),.Y(Y),.Sub(Sub),.S(S),.Cout(Cout));
	initial begin
       //º”∑®≤‚ ‘
        X=32'b01010010101010101010101010101010;
        Y=32'b10101010101010101010101010101010;
        Sub=0;
        #20;
        //ºı∑®≤‚ ‘
        X=32'b11010010101010101010101010101010;
        Y=32'b10101010101010101010101010101010;
        Sub=1;
	end
endmodule
