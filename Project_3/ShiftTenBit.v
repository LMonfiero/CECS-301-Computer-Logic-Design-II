`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:27 03/26/2019 
// Design Name: 
// Module Name:    ShiftTenBit 
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
module ShiftTenBit(clk, rst, sdi, out);
	input clk, rst, sdi;
	output [9:0] out;
	reg [9:0] out, nout;
	
	pulse PULSE (.clk(clk),
					 .rst(rst),
					 .pls(pls));
	
	always @ (posedge clk, posedge rst)
		if (rst) out <= 10'b0;
		else if (pls) out <= nout;
		
	always @ (*)
		nout = {sdi, out [9:1]};
		
endmodule
