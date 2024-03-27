`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:49:19
// Design Name: 
// Module Name: SLTI
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


module SLTI(
    input [15:0] A,
    input [15:0] immediate,
    output reg SLTI_result
);

    always @* begin
        if (A < immediate) begin
            SLTI_result = 1; // Set result to 1 if A is less than the immediate value
        end else begin
            SLTI_result = 0; // Set result to 0 otherwise
        end
    end

endmodule
