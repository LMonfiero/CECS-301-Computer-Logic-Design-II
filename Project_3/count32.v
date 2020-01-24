`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:56 03/26/2019 
// Design Name: 
// Module Name:    count32 
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
module count32(clk, rst, cnt, q);
	input clk, rst, cnt;
	output [31:0] q;
	reg [31:0] q;
	wire inc;
	wire [9:0] out;
	
	Button BT (.clk(clk),
					.rst(rst),
					.btn(cnt),
					.out(inc));
	
	always @(posedge clk, posedge rst)
		if (rst) q <= 32'b0; else
		if (inc) q <= q + 32'b1;

endmodule
