`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:27:21
// Design Name: 
// Module Name: ALU_16bit
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


module ALU_16bit(
    input [15:0] A,
    input [15:0] B, 
    input BNegate,
    input [2:0] ALUOp, // operacioni
    output [15:0] Result,
    output CarryOut,
    output Zero,
    output Overflow
    );

wire [14:0] COUT;

//wire [15:0] sltiGate, sllGate, sraGate;


//    SLTI sltiModule(.A(A), .immediate(B), .SLTI_result(resultSLTI));
//    SLL sllModule(.A(A), .shiftAmount(B[3:0]), .out(resultSLL));
//    SRA sraModule(.A(A), .shiftAmount(B[3:0]), .out(resultSRA));


ALU1Bit  ALU0( A[0],  B[0],  BNegate, BNegate, ALUOp, Result[0],  COUT[0]);
ALU1Bit  ALU1( A[1],  B[1],  COUT[0], BNegate, ALUOp, Result[1],  COUT[1]);
ALU1Bit  ALU2( A[2],  B[2],  COUT[1], BNegate, ALUOp, Result[2],  COUT[2]);
ALU1Bit  ALU3( A[3],  B[3],  COUT[2], BNegate, ALUOp, Result[3],  COUT[3]);
ALU1Bit  ALU4( A[4],  B[4],  COUT[3], BNegate, ALUOp, Result[4],  COUT[4]);
ALU1Bit  ALU5( A[5],  B[5],  COUT[4], BNegate, ALUOp, Result[5],  COUT[5]);
ALU1Bit  ALU6( A[6],  B[6],  COUT[5], BNegate, ALUOp, Result[6],  COUT[6]);
ALU1Bit  ALU7( A[7],  B[7],  COUT[6], BNegate, ALUOp, Result[7],  COUT[7]);
ALU1Bit  ALU8( A[8],  B[8],  COUT[7], BNegate, ALUOp, Result[8],  COUT[8]);
ALU1Bit  ALU9( A[9],  B[9],  COUT[8], BNegate, ALUOp, Result[9],  COUT[9]);
ALU1Bit  ALU10(A[10], B[10], COUT[9], BNegate, ALUOp, Result[10], COUT[10]);
ALU1Bit  ALU11(A[11], B[11], COUT[10],BNegate, ALUOp, Result[11], COUT[11]);
ALU1Bit  ALU12(A[12], B[12], COUT[11],BNegate, ALUOp, Result[12], COUT[12]);
ALU1Bit  ALU13(A[13], B[13], COUT[12],BNegate, ALUOp, Result[13], COUT[13]);
ALU1Bit  ALU14(A[14], B[14], COUT[13], BNegate, ALUOp, Result[14], COUT[14]);
ALU1Bit  ALU15(A[15], B[15], COUT[14], BNegate, ALUOp, Result[15], CarryOut);

assign Zero = ~(Result[0] | Result[1] | 
                Result[2] | Result[3] | 
                Result[4] | Result[5] | 
                Result[6] | Result[7] | 
                Result[8] | Result[9] | 
                Result[10] | Result[11] | 
                Result[12] | Result[13] | 
                Result[14] | Result[15]);  

assign Overflow = COUT[14] ^ CarryOut;

endmodule
