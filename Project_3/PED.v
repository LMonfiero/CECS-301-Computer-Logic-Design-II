`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:17 03/26/2019 
// Design Name: 
// Module Name:    PED 
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
module PED(clk, rst, inc, sd);
	input clk, rst, sd;
	output inc;
	reg nq;
	reg [1:0] next;
	wire [9:0] out;
	
	ShiftTenBit STB (.clk(clk),
							.rst(rst),
							.out(out),
							.sdi(sd));
							
	assign inc = next[0] & !next[1];
	
	always @ (posedge clk, posedge rst)
		if (rst) next <= 2'b0;
		else next <= {next[0], nq};
		
	always @ (*) 
		if (out == 10'h3FF) nq = 1;
		else nq = 0;


endmodule
