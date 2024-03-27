`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 23:45:11
// Design Name: 
// Module Name: ripplecarry
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


module ripplecarry(
input [15:0] A,
input [15:0] B,
input CIN,
output[15:0]S,
output COUT
);
wire bartja[14:0];
Mbledhesi n0(A[0], B[0], CIN, S[0], bartja[0]);
Mbledhesi n1(A[1], B[1], bartja[0], S[1], bartja[1]);
Mbledhesi n2(A[2], B[2], bartja[1], S[2], bartja[2]);
Mbledhesi n3(A[3], B[3], bartja[2], S[3], bartja[3]);
Mbledhesi n4(A[4], B[4], bartja[3], S[4], bartja[4]);
Mbledhesi n5(A[5], B[5], bartja[4], S[5], bartja[5]);
Mbledhesi n6(A[6], B[6], bartja[5], S[6], bartja[6]);
Mbledhesi n7(A[7], B[7], bartja[6], S[7], bartja[7]);
Mbledhesi n8(A[8], B[8], bartja[7], S[8], bartja[8]);
Mbledhesi n9(A[9], B[9], bartja[8], S[9], bartja[9]);
Mbledhesi n10(A[10], B[10], bartja[9], S[10], bartja[10]);
Mbledhesi n11(A[11], B[11], bartja[10], S[11], bartja[11]);
Mbledhesi n12(A[12], B[12], bartja[11], S[12], bartja[12]);
Mbledhesi n13(A[13], B[13], bartja[12], S[13], bartja[13]);
Mbledhesi n14(A[14], B[14], bartja[13], S[14], bartja[14]);
Mbledhesi n15(A[15], B[15], bartja[14], S[15], COUT);

endmodule
