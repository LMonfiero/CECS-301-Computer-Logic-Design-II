`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:41 03/26/2019 
// Design Name: 
// Module Name:    Rotation 
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
module Rotation(clk, rst, rotate);
	input clk, rst;
	output rotate;
	reg [17:0] count;
	
	assign rotate = (count == 18'd199_999);
	
	always @(posedge clk, posedge rst)
		if (rst) count <= 18'b0; else
		if (rotate) count <= 18'b0;
		else count <= count + 18'b1;

endmodule
