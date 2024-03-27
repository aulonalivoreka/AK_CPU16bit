`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 00:23:13
// Design Name: 
// Module Name: ALU_16bit_Test
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


module ALU_16bit_Test;
    reg [15:0] A;
    reg [15:0] B;
    reg BNegate;
    reg [2:0] ALUOp;  
    wire [15:0] Result;
    wire CarryOut;
    wire Zero;
    wire Overflow;
    

    initial
    $monitor("A=%d, B=%d, BNegate=%b , ALUOp=%b, Result=%d, CarryOut=%b ,Zero=%b, Overflow=%b", A, B,  BNegate, ALUOp, Result, CarryOut, Zero, Overflow);
    initial
    begin
    //AND
    #0 A=16'd5; B=16'd5; BNegate=1'b0; ALUOp=3'b000;
    #10 A=16'd3; B=16'd4; BNegate=1'b0; ALUOp=3'b000;
    //OR
    #10 A=16'd7; B=16'd5; BNegate=1'b0; ALUOp=3'b010;
    #10 A=16'd5; B=16'd2; BNegate=1'b0; ALUOp=3'b010;
    //XOR
    #10 A=16'd5; B=16'd5; BNegate=1'b0; ALUOp=3'b011;
    #10 A=16'd3; B=16'd4; BNegate=1'b0; ALUOp=3'b011;
    //ADD
    #10 A=16'd5; B=16'd3; BNegate=1'b0; ALUOp=3'b100;
    #10 A=16'd3; B=16'd4; BNegate=1'b0; ALUOp=3'b100;
    //SUB
    #10 A=16'd4; B=16'd2; BNegate=1'b1; ALUOp=3'b100;
    #10 A=16'd4; B=16'd1; BNegate=1'b1; ALUOp=3'b100;
    #10 $stop;
    end

    ALU_16bit ALUTEST(.A(A), .B(B), .BNegate(BNegate), .ALUOp(ALUOp), .Result(Result), .CarryOut(CarryOut), .Zero(Zero), .Overflow(Overflow));
endmodule
