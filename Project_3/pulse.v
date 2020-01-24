`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:06 03/26/2019 
// Design Name: 
// Module Name:    pulse 
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
module pulse(clk, rst, pls);
	input clk, rst;
	output pls;
	reg [16:0] counter;
	
	assign pls = (counter == 17'd99_999);
	
	always @(posedge clk, posedge rst)
		if (rst) counter <= 17'b0; else
		if (pls) counter <= 17'b0;
		else counter <= counter + 17'b1;


endmodule
