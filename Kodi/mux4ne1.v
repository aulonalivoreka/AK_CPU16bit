`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:25:14
// Design Name: 
// Module Name: mux4ne1
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


module mux4ne1(
    input [15:0] A0,
    input [15:0] A1,
    input [15:0] A2,
    input [15:0] A3,
    input [1:0] S,
    output [15:0] Dalja
);

assign Dalja = (S[1] ? (S[0] ? A3 : A2) : (S[0] ? A1 : A0));

endmodule
