`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:31 03/26/2019 
// Design Name: 
// Module Name:    Cathode 
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
module Cathode(clk, rst, cath);
	input clk, rst;
	output reg [2:0] cath;
	
	Rotation RT1(.clk(clk), .rst(rst), .rotate(rotate));
	
	always @ (posedge clk, posedge rst)
		if (rst) cath <= 3'b0; else
		if (rotate) cath <= cath + 3'b1;
		else cath <= cath;

endmodule
