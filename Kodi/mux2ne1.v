`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:29:41
// Design Name: 
// Module Name: mux2ne1
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


module mux2ne1(
 input A0,
 input A1,
 input S,
 output Dalja
    );
    
assign Dalja = S ? A1 : A0;
endmodule