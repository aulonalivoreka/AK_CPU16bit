`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:50:09
// Design Name: 
// Module Name: SRA
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


//module SRA(s, a, b);
//    input [15:0]  a, b;
//    output [15:0] s;
//    reg [15:0] s;
//    integer i;

//    always @(a or b) begin
//        s = a;  
//        for (i = 0; i < b[3:0]; i = i + 1) begin
//            s = {s[15], s[15:1]};  
//        end
//    end
//endmodule
module SRA(
  input [15:0] A,
  input [3:0] shiftAmount,
  output reg [15:0] out
);
wire signBit = out[15]; 
  always @* begin
    out = A; 

    if (shiftAmount[0] == 1'b1)
      out = {signBit, out[15:1]};

    if (shiftAmount[1] == 1'b1)
      out = {signBit, signBit, out[14:1]};

    if (shiftAmount[2] == 1'b1)
      out = {signBit, signBit, signBit, signBit, out[12:1]};

    if (shiftAmount[3] == 1'b1)
      out = {signBit, signBit, signBit, signBit, signBit, out[11:1]};
  end
endmodule