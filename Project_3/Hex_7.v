`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:27 03/26/2019 
// Design Name: 
// Module Name:    Hex_7 
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
module Hex_7(clk, rst, Ca, d3);
	input clk, rst, d3;
	output reg [7:0] Ca;
	wire [3:0] HexVal;
	
	Multiplexer M81 (.clk(clk), .rst(rst), .out(HexVal), .d2(d3));

	always @ (*)
		case(HexVal)
			4'h0: Ca = 8'hC0;
			4'h1: Ca = 8'hF9;
			4'h2: Ca = 8'hA4;
			4'h3: Ca = 8'hB0;
			4'h4: Ca = 8'h99;
			4'h5: Ca = 8'h92;
			4'h6: Ca = 8'h82;
			4'h7: Ca = 8'hF8;
			4'h8: Ca = 8'h80;
			4'h9: Ca = 8'h98;
			4'hA: Ca = 8'h88;
			4'hB: Ca = 8'h83;
			4'hC: Ca = 8'hC6;
			4'hD: Ca = 8'hA1;
			4'hE: Ca = 8'h86;
			4'hF: Ca = 8'h8E;
		default: Ca = 8'hFF;
		endcase

endmodule
