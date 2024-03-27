`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:39:46
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
input[15:0] WD,
input Clk,
input[15:0] adresa,
input MemWrite,
input MemRead,
output[15:0] ReadData);
reg[7:0] Dmem[127:0];
initial $readmemh("dataMemory.mem",Dmem);
always @(posedge Clk)
begin
if(MemWrite)
begin
Dmem[adresa]<=WD[15:8];
Dmem[adresa+1]<=WD[7:0];
end
end
always @(negedge Clk)
begin
$writememh("dataMemory.mem",Dmem);

end
assign ReadData={Dmem[adresa],Dmem[adresa+1]};
endmodule
