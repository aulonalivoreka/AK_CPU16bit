`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:34:46
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [3:0] OPCODE, 
    output reg RegDst,  
    output reg AluSrc, 
    output reg MemToReg,
    output reg RegWrite,
    output reg MemRead,
    output reg MemWrite,
    output reg[1:0] ALUOp,
    output reg Branch
    );

always @ (OPCODE)
begin

case(OPCODE)
4'b0000: // AND
begin
assign RegDst = 1'b1;
assign AluSrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b10;
assign Branch = 1'b0;
end  

4'b0000: //OR
begin
assign RegDst = 1'b1;
assign AluSrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b10;
assign Branch = 1'b0;
end  

4'b0000: //XOR
begin
assign RegDst = 1'b1;
assign AluSrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b10;
assign Branch = 1'b0;
end 

4'b0001: //ADD
begin
assign RegDst = 1'b1;
assign AluSrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b10;
assign Branch = 1'b0;
end 

4'b1001: //ADDI
begin
assign RegDst = 1'b0;
assign AluSrc = 1'b1;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b11;
assign Branch = 1'b0;
end 

4'b0001: //SUB
begin
assign RegDst = 1'b1;
assign AluSrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b10;
assign Branch = 1'b0;
end 

4'b1010: //SUBI
begin
assign RegDst = 1'b0;
assign AluSrc = 1'b1;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b11;
assign Branch = 1'b0;
end 

4'b1011: //SLTI
begin
assign RegDst = 1'b0;
assign AluSrc = 1'b1;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b11;
assign Branch = 1'b0;
end 

4'b1100: //LW
begin
assign RegDst = 1'b0;
assign AluSrc = 1'b1;
assign MemToReg = 1'b1;
assign RegWrite = 1'b1;
assign MemRead = 1'b1;
assign MemWrite = 1'b0;
assign ALUOp = 2'b00;
assign Branch = 1'b0;
end 

4'b1101: //SW
begin
assign RegDst = 1'b0;
assign AluSrc = 1'b1;
assign MemToReg = 1'b0;
assign RegWrite = 1'b0;
assign MemRead = 1'b0;
assign MemWrite = 1'b1;
assign ALUOp = 2'b00;
assign Branch = 1'b0;
end 

4'b1111: //BEQ
begin
assign RegDst = 1'b0;
assign AluSrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b0;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b01;
assign Branch = 1'b1;
end

4'b0010: //SLL
begin
assign RegDst = 1'b1;
assign AluSrc = 1'bX;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b10;
assign Branch = 1'b0;
end  

4'b0010: //SRA
begin
assign RegDst = 1'b1;
assign AluSrc = 1'bX;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUOp = 2'b10;
assign Branch = 1'b0;
end 

endcase

end 
endmodule
