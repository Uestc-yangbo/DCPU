`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 11:13:31
// Design Name: 
// Module Name: MUX32X32
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


module MUX32X32(Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0,S,Y);
    input [31:0]Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0;
    input [4:0]S;
    output [31:0]Y;
    function [31:0]select;
        input [31:0]Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0;
        input [4:0]S;
            case(S)
                5'b00000:select=Q0;
                5'b00001:select=Q1;
                5'b00010:select=Q2;
                5'b00011:select=Q3;
                5'b00100:select=Q4;
                5'b00101:select=Q5;
                5'b00110:select=Q6;
                5'b00111:select=Q7;
                5'b01000:select=Q8;
                5'b01001:select=Q9;
                5'b01010:select=Q10;
                5'b01011:select=Q11;
                5'b01100:select=Q12;
                5'b01101:select=Q13;
                5'b01110:select=Q14;
                5'b01111:select=Q15;
                5'b10000:select=Q16;
                5'b10001:select=Q17;
                5'b10010:select=Q18;
                5'b10011:select=Q19;
                5'b10100:select=Q20;
                5'b10101:select=Q21;
                5'b10110:select=Q22;
                5'b10111:select=Q23;
                5'b11000:select=Q24;
                5'b11001:select=Q25;
                5'b11010:select=Q26;
                5'b11011:select=Q27;
                5'b11100:select=Q28;
                5'b11101:select=Q29;
                5'b11110:select=Q30;
                5'b11111:select=Q31;
            endcase
    endfunction
    assign Y = select(Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0,S);    
endmodule
