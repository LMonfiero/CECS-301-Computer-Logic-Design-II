`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:19 02/18/2019 
// Design Name: 
// Module Name:    FA 
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
module FA(A, B, Ci, Y, Co);
input A, B;
input Ci;
output Y;
output Co;

wire Y, Co;

assign Y = (A^B) ^ Ci;
assign Co = ((A^B)&Ci) | (A&B);

endmodule
