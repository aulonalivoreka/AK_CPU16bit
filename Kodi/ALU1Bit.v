`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:26:39
// Design Name: 
// Module Name: ALU1Bit
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


module ALU1Bit(
    input A, 
    input B,
    input CIN,
    input Bnegate,
    input [2:0] operation, 
    output Result,
    output cout
);

wire notB, mB, andGate, orGate, xorGate, add, sub, mBledhesi;

assign notB = ~B;
mux2ne1 muxB(B, notB, Bnegate, mB);

// Basic operations
assign andGate = A & mB;
assign orGate = A | mB;
 // assign xorGate = A ^ mB;
XOR x(A,mB,xorGate);


//SLL sll(A,mB,sltiGate);
//SRA sra(A,mB,sraGate);
//SLTI slti(A,mB,sltiGate);


Mbledhesi subi(A, mB, Bnegate, sub, cout);
Mbledhesi adder(A, mB, Bnegate, mBledhesi, cout);

mux8ne1 muxALU(andGate, 1'bx , orGate, xorGate, mBledhesi, sub, 1'bx , 1'bx , operation, Result);
                     // sltiGate                               sllGate  sraGate

endmodule
