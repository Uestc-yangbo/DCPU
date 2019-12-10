`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 19:16:01
// Design Name: 
// Module Name: CONUNIT_test
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

//module CONUNIT(Op,Func,Z,Regrt,Se,Wreg,Aluqa,Aluqb,Aluc,Wmem,Pcsrc,Reg2reg,JrAJal);
module CONUNIT_test;
reg [5:0]Op,Func;
reg Z;
wire Regrt,Se,Wreg,Aluqa,Aluqb,Wmem,Reg2reg,JrAJal;
wire [1:0]Pcsrc;
wire [3:0]Aluc;
CONUNIT uut(.Op(Op),.Func(Func),.Z(Z),.Regrt(Regrt),.Se(Se),.Wreg(Wreg),.Aluqa(Aluqa),.Aluqb(Aluqb),.Aluc(Aluc),.Wmem(Wmem),.Pcsrc(Pcsrc),.Reg2reg(Reg2reg),.JrAJal(JrAJal));
initial begin
Op=6'b000000;Func=6'b100000;Z=0;
#20
Op=6'b000000;Func=6'b100010;Z=1;
#20
Op=6'b000000;Func=6'b100100;Z=0;
#20
Op=6'b000000;Func=6'b100101;Z=0;
#20
Op=6'b000000;Func=6'b100110;Z=0;
#20
Op=6'b000000;Func=6'b000000;Z=0;
#20
Op=6'b000000;Func=6'b000010;Z=0;
#20
Op=6'b000000;Func=6'b000011;Z=0;
#20
Op=6'b001000;Func=6'b000000;Z=0;
#20
Op=6'b001100;Func=6'b000000;Z=0;
#20
Op=6'b001101;Func=6'b000000;Z=0;
#20
Op=6'b001110;Func=6'b000000;Z=0;
#20
Op=6'b100011;Func=6'b000000;Z=0;
#20
Op=6'b101011;Func=6'b000000;Z=0;
#20
Op=6'b000100;Func=6'b000000;Z=1;
#20
Op=6'b000101;Func=6'b000000;Z=0;
#20
Op=6'b001111;Func=6'b000000;Z=0;
#20
Op=6'b000010;Func=6'b000000;Z=0;
end
endmodule
