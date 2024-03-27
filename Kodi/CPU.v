`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:38:05
// Design Name: 
// Module Name: CPU
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


module CPU(
    input Clock
);
    reg [15:0] PC;
    wire [15:0] Instruction, BEQPC;
    wire Branch, RegDst, AluSrc, MemToReg, RegWrite, MemRead, MemWrite;
    wire [1:0] AluOp;

    // Initial block for setting the initial value of PC
    initial PC = 16'd0;

    Datapath DP(
        Clock, 
        PC,
        RegDst,  
        AluSrc, 
        MemToReg,
        RegWrite,
        MemRead,
        MemWrite,
        AluOp,
        Branch,
        BEQPC
    );

    ControlUnit CU(
        Instruction[15:12],
        RegDst,  
        AluSrc, 
        MemToReg,
        RegWrite,
        MemRead,
        MemWrite,
        AluOp,
        Branch
    );

    always @(posedge Clock) begin
        if (Branch) begin
            PC <= BEQPC; // Take the branch
        end else begin
            PC <= PC + 2; // Increment PC by 2 for 16-bit instruction
        end
    end
endmodule

