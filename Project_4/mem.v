`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:08:31 04/23/2019 
// Design Name: 
// Module Name:    mem 
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
//Memory
module mem(clk, write, step, address, din, dout);
	input 				write, step, clk;
	input 	[15:0] 	din;
	input 	[5:0] 	address;
	output 	[15:0] 	dout;
	
	reg		[15:0] memory	[0:63];
	wire		doWrite;
	
	assign doWrite = step & write;
	
	always @ (posedge clk)
		if (doWrite)	mem[address] = din;
		
	always @ (*)
		dout = mem[address];





endmodule
