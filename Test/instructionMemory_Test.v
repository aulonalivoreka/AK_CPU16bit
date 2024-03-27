`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 00:15:22
// Design Name: 
// Module Name: instructionMemory_Test
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


module instructionMemory_Test;
reg[15:0] PC;
wire[15:0] Instruction;
initial
begin
#0 PC=16'd10;
#5 PC=16'd12;
#5 PC=16'd14;
#5 PC=16'd16;
#5 PC=16'd18;
#5 $stop;
end
instructionMemory IM(PC,Instruction);
endmodule
