`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:41:39
// Design Name: 
// Module Name: Datapath
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


module Datapath(
input Clock,
input[15:0] PC,
input RegDst,  
input AluSrc, 
input MemToReg,
input RegWrite,
input MemRead,
input MemWrite,
input [1:0] AluOp,
input Branch,
output BEQPC
    );
    
wire[15:0] Instruction;
wire[1:0] RS;
wire[1:0] RT;
wire[1:0] RD;
wire[1:0] Funct; // funksioni
wire[7:0] Immediate; // teli mbas instruction memory
wire[15:0] Immediate16; // teli vazhdues 16bit mbas instruction
wire[1:0] PercaktoDest; // teli mbas multiplex ku osht i lidhum RT,RD
wire[15:0] PercaktoHyrjenB; // te ALU2 teli mbas muxit
wire[15:0] DaljaAluB; // Dalja e Alus
wire[15:0] DMOut; // Te read data dalja e sej mbas ALUB
wire[15:0] WriteDataReg; // Dalja e muxit qe e qon n Write Data
wire Zero, Overflow, Carryout; // Dalja e 0 mbas ALU edhe overflow carryout qe e kem n ALU tbome
wire[1:0] AluCtrl; // Dalja perj ALU Control n ALU
wire[15:0] ReadRS; // Portat dalese
wire[15:0] ReadRT;
wire[3:0] opcode;

ripplecarry rippletripple(A, B, BNegate, Result, CarryOut);
instructionMemory instruct(PC,Instruction);
assign opcode = Instruction[15:12];
assign RS = Instruction[11:10]; // prej specifikimit te sistemit
assign RT = Instruction[9:8];
assign RD = Instruction[6:5];
assign Funct = Instruction[1:0];
assign Immediate = Instruction[7:0];

mux2ne1 mDest(RegDst, RT, RD, PercaktoDest);
mux2ne1 mOut(MemToReg, DaljaAluB, DMOut, WriteDataReg);

RegisterFile RF(RS, RT, PercaktoDest, WriteDataReg, RegWrite, Clock, ReadRS, ReadRT);

assign Immediate16 = {{8{Immediate[7]}} , Immediate[7:0]};

mux2ne1 mALU(AluSrc, ReadRT, Immediate16, PercaktoHyrjenB);

ALUControl AL(AluOp, Funct, opcode, AluCtrl);


ALU_Extra ALU1(ReadRS, PercaktoHyrjenB, AluCtrl[0], AluCtrl , DaljaAluB , Carryout, Zero , Overflow);

DataMemory Data(DaljaAluB, ReadRT, MemWrite, MemRead, Clock, DMOut);

wire [15:0] ISH;
wire [15:0] ISHplusPC;

assign ISH = {ISH[13:0], 2'b00};
assign ISHplusPC = ISH + PC;

assign BEQPC = {{6{Instruction[7]}}, Instruction[7:0], 2'b00};

endmodule
