`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:35 02/18/2019 
// Design Name: 
// Module Name:    quiz2 
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
module quiz2(clk, rst, din, out);
input clk, rst, din;
output out;
reg [1:0] Q;
wire x, out;
assign out = Q[1];
assign x = ~(Q[0] ^ din);
always @ (posedge clk, posedge rst)
	if (rst)
		Q <= 2'b0;
	else
		Q <= {x, din};


endmodule
