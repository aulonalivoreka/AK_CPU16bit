`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:32:13
// Design Name: 
// Module Name: ALU_Extra
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


module ALU_Extra(
    input [15:0] A,
    input [15:0] B, 
    input BNegate,
    input [1:0] ALUOp,
    output [15:0] Result,
    output CarryOut,
    output Zero,
    output Overflow
    );
    
    wire[15:0] AluRez16;
    wire[15:0] slti_;
    wire[15:0] sll_;
    wire[15:0] sra_;
    
    ALU_16bit Alu16b(A, B, BNegate, ALUOp, AluRez16, CarryOut, Zero, Overflow);
    
    SLL sll(A,B,sll_);
    SRA sra(A,B,sra_);
    SLTI slti(A,B,slti_);
    
    mux4ne1 mux(AluRez16, slti_, sll_, sra_, ALUOp, Result);
    
endmodule

