`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:31:13 03/27/2019 
// Design Name: 
// Module Name:    TLD 
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
module TLD(clk, rst, Anode, Cathode, signal);
	input clk, rst, signal;
	output [7:0] Anode, Cathode;
	wire [7:0] Anode, Cathode;
	
	Anodes AN (.clk(clk),
				.rst(rst), 
				.Anode(Anode));
	
	Hex_7 HX (.clk(clk),
				.rst(rst),
				.Ca(Cathode),
				.d3(signal));

endmodule
