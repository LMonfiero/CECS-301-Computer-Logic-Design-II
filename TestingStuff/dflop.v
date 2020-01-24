`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:47 05/05/2019 
// Design Name: 
// Module Name:    dflop 
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
module dflop(clk,rst,din,q2);
	input 	clk,rst,din;
	output 	q2;
	reg		q1,q2,x;
	always @ (*)
			assign x = ~(q1 ^ din);
	always @(posedge clk, posedge rst)
		if(rst)
				{q1,q2} <= 2'b0;
		else
				{q1,q2} <= {din,x};
endmodule
