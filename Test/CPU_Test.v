`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 00:21:29
// Design Name: 
// Module Name: CPU_Test
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


module CPU_Test();

reg Clock;

initial 
begin
#0 Clock = 1'b0; //#5 Clock = 1'b0; 
#100 Clock = 1'b0; // #10 Clock = 1'b1;
end

always
begin
    #5 Clock = ~Clock;
end

CPU cpu(Clock);
endmodule
