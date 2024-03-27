`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:25:54
// Design Name: 
// Module Name: mux8ne1
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


module mux8ne1(
    input A0,
    input A1,
    input A2,
    input A3,
    input A4,
    input A5,
    input A6,
    input A7,
    input [2:0] S,
    output Dalja
    );
    
//    s 000 a0  AND
//    s 001 a1  SLTI
//    s 010 a2  OR
//    s 011 a3  XOR
//    s 100 a4  ADD, ADDI
//    s 101 a5  SUB, SUBI
//    s 111 a6  SLL 
//    s 110 a7  SRA

assign Dalja = S[2] ? 
               (S[1] ? (S[0] ? A7 : A6) : (S[0] ? A5 : A4)) : 
               (S[1] ? (S[0] ? A3 : A2) : (S[0] ? A1 : A0));



endmodule
