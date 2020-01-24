`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:57 02/18/2019 
// Design Name: 
// Module Name:    FA4 
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
module FA4(A, B, Ci, Y, Co);
input [3:0] A, B;
input Ci;
output [3:0] Y;
output Co;

FA FA_3 (.A(A[3]), .B(B[3]), .Ci(Co2), .Y(Y[3]), .Co(Co));
FA FA_2 (.A(A[2]), .B(B[2]), .Ci(Co1), .Y(Y[2]), .Co(Co2));
FA FA_1 (.A(A[1]), .B(B[1]), .Ci(Co0), .Y(Y[1]), .Co(Co1));
FA FA_0 (.A(A[0]), .B(B[0]), .Ci(Ci), .Y(Y[0]), .Co(Co0));

endmodule
