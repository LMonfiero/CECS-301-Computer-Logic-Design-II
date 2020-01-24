`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:14:56 04/23/2019 
// Design Name: 
// Module Name:    loadReg 
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
module loadReg(clk, rst, step, din, dout);
	 input				clk, rst, step;
	 input 	[15:0]	din;
	 reg 		[15:0]	dout;
	 
	 always @ (posedge clk, posedge rst)
		if (rst) dout <= 15'b0;
		else
		if (step) dout <= din;
	 


endmodule
