`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 00:22:13
// Design Name: 
// Module Name: ALU1Bit_Test
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


module ALU1Bit_Test;
reg A , B ,Bnegate, CIN;
reg [2:0] operation;
wire Result, cout;

initial
$monitor("A=%b, B=%b, Bnegate=%b, operation=%b, Result=%b,cout=%b",A, B, Bnegate, operation, Result, cout);

initial
begin
//and
#0 A=1'b0; B=1'b0;  Bnegate=1'b0; operation=3'b000; CIN=1'b0;
#10 A=1'b0; B=1'b1; Bnegate=1'b0; operation=3'b000; CIN=1'b0;
#10 A=1'b1; B=1'b0; Bnegate=1'b0; operation=3'b000; CIN=1'b0;
#10 A=1'b1; B=1'b1; Bnegate=1'b0; operation=3'b000; CIN=1'b0;
//or
#10 A=1'b0; B=1'b0; Bnegate=1'b0; operation=3'b010; CIN=1'b0;
#10 A=1'b0; B=1'b1; Bnegate=1'b0; operation=3'b010; CIN=1'b0;
#10 A=1'b1; B=1'b0; Bnegate=1'b0; operation=3'b010; CIN=1'b0;
#10 A=1'b1; B=1'b1; Bnegate=1'b0; operation=3'b010; CIN=1'b0;
//xor
#10 A=1'b0; B=1'b0;Bnegate=1'b0; operation=3'b011; CIN=1'b0;
#10 A=1'b0; B=1'b1;Bnegate=1'b0; operation=3'b011; CIN=1'b0;
#10 A=1'b1; B=1'b0;Bnegate=1'b0; operation=3'b011; CIN=1'b0;
#10 A=1'b1; B=1'b1;Bnegate=1'b0; operation=3'b011; CIN=1'b0;
//add
#10 A=1'b0; B=1'b0;Bnegate=1'b0; operation=3'b100; 
#10 A=1'b0; B=1'b1;Bnegate=1'b0; operation=3'b100; 
#10 A=1'b1; B=1'b0;Bnegate=1'b0; operation=3'b100; 
#10 A=1'b1; B=1'b1;Bnegate=1'b0; operation=3'b100; 
//sub
#10 A=1'b0; B=1'b0;Bnegate=1'b1; operation=3'b100; 
#10 A=1'b0; B=1'b1;Bnegate=1'b1; operation=3'b100; 
#10 A=1'b1; B=1'b0;Bnegate=1'b1; operation=3'b100; 
#10 A=1'b1; B=1'b1;Bnegate=1'b1; operation=3'b100; 
#10 $stop;
end

ALU1Bit alu(.A(A), .B(B) ,.Bnegate(Bnegate), .operation(operation), .Result(Result), .cout(cout));

endmodule
