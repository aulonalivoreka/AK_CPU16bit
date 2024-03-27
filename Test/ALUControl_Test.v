`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 00:24:28
// Design Name: 
// Module Name: ALUControl_Test
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


module ALUControl_Test;
    reg [1:0] ALUOp; 
    reg [1:0] Funct;
    reg [3:0] OPCode;
    wire [3:0] Operation;
    
    // Instantiate your ALUControl
    ALUControl ALUControlTest(ALUOp, Funct, OPCode, Operation);

    initial
    begin
        // Test cases
        #0 ALUOp = 2'b00; Funct = 2'bXX; OPCode = 4'bXXXX;  // ADD ADDI
        #10 ALUOp = 2'b01; Funct = 2'bXX; OPCode = 4'bXXXX; // SUB SUBI
        #10 ALUOp = 2'b10; Funct = 2'b00; OPCode = 4'b0000; // AND
        #10 ALUOp = 2'b10; Funct = 2'b01; OPCode = 4'b0000; // OR
        #10 ALUOp = 2'b10; Funct = 2'b10; OPCode = 4'b0000; // XOR
        #10 ALUOp = 2'b10; Funct = 2'b00; OPCode = 4'b0010; // SLL
        #10 ALUOp = 2'b10; Funct = 2'b01; OPCode = 4'b0010; // SRA
        #10 ALUOp = 2'b10; Funct = 2'b00; OPCode = 4'b0001; // ADD
        #10 ALUOp = 2'b10; Funct = 2'b01; OPCode = 4'b0001; // SUB
        #10 ALUOp = 2'b11; Funct = 2'bXX; OPCode = 4'b1011; // SLTI

        #10
        $stop;
    end
endmodule
