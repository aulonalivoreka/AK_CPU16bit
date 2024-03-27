`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:44:16
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
    input wire[1:0] RS,
    input wire[1:0] RT,
    input wire[1:0] RD,
    input wire[15:0] WriteData,
    input wire RegWrite,
    input wire Clock,
    output wire[15:0] ReadRS,
    output wire[15:0] ReadRT
);

reg[15:0] Registers[3:0]; // 4 regjistrat me gjerësi 16 bitë

// Reseto të gjithë regjistrat në 0
integer i;


initial 
begin
    for(i = 0; i < 4; i = i + 1)
        Registers[i] <= 16'd0; 
end

// Shkruaj në regjister
always @(posedge Clock) begin
    if (RegWrite) begin
        Registers[RD] <= WriteData;
    end
end

// Lexo regjistrat ReadRS, ReadRT
assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];

endmodule

