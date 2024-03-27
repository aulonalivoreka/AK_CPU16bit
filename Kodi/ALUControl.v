`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:33:24
// Design Name: 
// Module Name: ALUControl
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


module ALUControl(
    input [1:0] ALUOp,
    input [1:0] funct,
    input [3:0] OPCode,
    output reg [3:0] Operation
);

always @ (ALUOp or funct or OPCode)
begin
    if (ALUOp == 2'b00) begin
        Operation = 4'b0100; // ADD
    end
    else if (ALUOp == 2'b01) begin
        Operation = 4'b1100; // SUB
    end
    else if (ALUOp == 2'b10) begin
        if (OPCode == 4'b0000) begin
            if (funct == 2'b00)
                Operation = 4'b0000; // AND
            else if (funct == 2'b01)
                Operation = 4'b0010; // OR
            else if (funct == 2'b10)
                Operation = 4'b0011; // XOR
        end
        else if (OPCode == 4'b0010) begin
            if (funct == 2'b00)
                Operation = 4'b0110; // SLL
            else if (funct == 2'b01)
                Operation = 4'b0111; // SRA
        end
        else if (OPCode == 4'b0001) begin
            if (funct == 2'b00)
                Operation = 4'b0100; // ADD
            else if (funct == 2'b01)
                Operation = 4'b1100; // SUB
        end
    end
    else if (ALUOp == 2'b11) begin
        if (OPCode == 4'b1001)
            Operation = 4'b0100; // ADDI
        else if (OPCode == 4'b1010)
            Operation = 4'b1100; // SUBI
        else if (OPCode == 4'b1011)
            Operation = 4'b0001; // SLTI
    end
end

endmodule