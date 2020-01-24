`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:16 03/26/2019 
// Design Name: 
// Module Name:    Button 
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
module Button(clk, rst, btn, out);
	input clk, rst, btn;
	output out;
	
	PED PED1	(.clk(clk),
				.rst(rst),
				.inc(test),
				.sd(btn));
				
	assign out = test;

endmodule
