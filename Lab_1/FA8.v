`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:11 02/18/2019 
// Design Name: 
// Module Name:    FA8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FA8(A, B, Ci, Y, Co);
input [7:0] A, B;
input Ci;
output [7:0] Y;
output Co;

FA4 FA_1 (.A(A[7:4]), .B(B[7:4]), .Ci(Co0), .Y(Y[7:4]), .Co(Co));
FA4 FA_0 (.A(A[3:0]), .B(B[3:0]), .Ci(Ci), .Y(Y[3:0]), .Co(Co0));

endmodule
