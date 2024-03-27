`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:47:40
// Design Name: 
// Module Name: SLL
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


//module SLL(s, a, b);
//    input [15:0]  a, b;
//    output [15:0] s;
//    reg [15:0] s;
//    integer i;

//    always @(a or b) begin
//        s = a;  
//        for (i = 0; i < b[3:0]; i = i + 1) begin
//            s = {s[14:0], 1'b0};  // shift left per cdo iteration
//        end
//    end
//endmodule

module SLL(
  input [15:0] A,
  input [3:0] shiftAmount,
  output reg [15:0] out
);

  always @* begin
    out = A; 

    if (shiftAmount[0] == 1'b1)
      out = {out[14:0], 1'b0}; // Shift left by 1

    if (shiftAmount[1] == 1'b1)
      out = {out[13:0], 2'b00}; // Shift left by 2

    if (shiftAmount[2] == 1'b1)
      out = {out[11:0], 4'b0000}; // Shift left by 4

    if (shiftAmount[3] == 1'b1)
      out = {out[7:0], 8'b00000000}; // Shift left by 8
  end
endmodule
  
  
