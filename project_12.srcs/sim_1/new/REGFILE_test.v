`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 23:09:02
// Design Name: 
// Module Name: REGFILE_test
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


module REGFILE_test;
    reg [4:0]Ra,Rb,Wr;
    reg [31:0]D;
    reg We,Clk,Clrn;
    wire [31:0]Qa,Qb;
    REGFILE u(Ra,Rb,D,Wr,We,Clk,Clrn,Qa,Qb);
    initial begin
           Ra=0;
           Rb=0;
           Wr=0;
           D=0;
           We=1;
           Clk=0;
           Clrn=1;
        end
        always #1 Ra=Ra+1;
        always #1.5 Rb=Rb+1;
        always #0.1 Wr=Wr+1;
        always #0.02 D=D+1;
        always #20 We=We+1;
        always #0.012 Clk=Clk+1;
        always #40 Clrn=Clrn+1;
endmodule
