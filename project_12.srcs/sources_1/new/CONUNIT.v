`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 16:43:51
// Design Name: 
// Module Name: CONUNIT
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

module CONUNIT(Op,Func,Z,Regrt,Se,Wreg,Aluqa,Aluqb,Aluc,Wmem,Pcsrc,Reg2reg,Jal);
input[5:0]Op,Func;
input Z;
output Regrt,Se,Wreg,Aluqa,Aluqb,Wmem,Reg2reg,Jal;
output[1:0]Pcsrc;
output [3:0]Aluc;
wire R_type=~|Op;

//R型指令
wire I_add=R_type&Func[5]&~Func[4]&~Func[3]&~Func[2]&~Func[1]&~Func[0];
wire I_sub=R_type&Func[5]&~Func[4]&~Func[3]&~Func[2]&Func[1]&~Func[0];
wire I_and=R_type&Func[5]&~Func[4]&~Func[3]&Func[2]&~Func[1]&~Func[0];
wire I_or=R_type&Func[5]&~Func[4]&~Func[3]&Func[2]&~Func[1]&Func[0];
wire I_xor=R_type&Func[5]&~Func[4]&~Func[3]&Func[2]&Func[1]&~Func[0];
wire I_sll=R_type&~Func[5]&~Func[4]&~Func[3]&~Func[2]&~Func[1]&~Func[0];
wire I_srl=R_type&~Func[5]&~Func[4]&~Func[3]&~Func[2]&Func[1]&~Func[0];
wire I_sra=R_type&~Func[5]&~Func[4]&~Func[3]&~Func[2]&Func[1]&Func[0];
wire I_jr=R_type&~Func[5]&~Func[4]&Func[3]&~Func[2]&~Func[1]&~Func[0];

//I型指令
wire I_addi=~Op[5]&~Op[4]&Op[3]&~Op[2]&~Op[1]&~Op[0];
wire I_andi=~Op[5]&~Op[4]&Op[3]&Op[2]&~Op[1]&~Op[0];
wire I_ori=~Op[5]&~Op[4]&Op[3]&Op[2]&~Op[1]&Op[0];
wire I_xori=~Op[5]&~Op[4]&Op[3]&Op[2]&Op[1]&~Op[0];
wire I_lw=Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0];
wire I_sw=Op[5]&~Op[4]&Op[3]&~Op[2]&Op[1]&Op[0];
wire I_beq=~Op[5]&~Op[4]&~Op[3]&Op[2]&~Op[1]&~Op[0];
wire I_bne=~Op[5]&~Op[4]&~Op[3]&Op[2]&~Op[1]&Op[0];
wire I_lui=~Op[5]&~Op[4]&Op[3]&Op[2]&Op[1]&Op[0];

//J型指令
wire I_j=~Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&~Op[0];
wire I_jal=~Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0];

assign Wreg = I_add|I_sub|I_and|I_or|I_xor|I_sll|I_srl|I_sra|I_addi|I_andi|I_ori|I_or|I_xori|I_lw|I_lui|I_jal;
assign Regrt = I_addi|I_andi|I_ori|I_xori|I_lw|I_sw|I_lui|I_beq|I_bne|I_j|I_jal;
assign Reg2reg  = I_add|I_sub|I_and|I_or|I_xor|I_sll|I_srl|I_sra|I_addi|I_andi|I_ori|I_xori|I_sw|I_beq|I_bne|I_j|I_jal|I_lui;
assign Aluqa=I_sll | I_srl | I_sra;
assign Aluqb = I_add | I_sub | I_and | I_or | I_xor | I_sll | I_srl | I_sra | I_beq | I_bne |I_j;
assign Se   = I_addi | I_lw | I_sw | I_beq | I_bne;
assign Aluc[3] = I_sra;
assign Aluc[2] = I_xor |I_lui | I_sll | I_srl | I_sra |I_xori;
assign Aluc[1] = I_and | I_or | I_lui | I_srl | I_sra | I_andi | I_ori;
assign Aluc[0] = I_sub | I_ori | I_or | I_sll | I_srl |I_sra| I_beq | I_bne;
assign Wmem = I_sw;
assign Pcsrc[0] = (I_beq&Z) | (I_bne&~Z) | I_jal | I_j;
assign Pcsrc[1] = I_j | I_jr | I_jal;
assign Jal=I_jal;
endmodule