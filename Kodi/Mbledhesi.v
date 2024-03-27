`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2024 22:42:34
// Design Name: 
// Module Name: Mbledhesi
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


module Mbledhesi(
    input A,
    input B,
    input CIN,
    output SUM,
    output COUT
    );

    assign SUM = A ^ B ^ CIN; //Tabela e vertetesis
    assign COUT = (CIN & A) | (CIN & B) | (A & B); //Tabela e vertetesis
endmodule