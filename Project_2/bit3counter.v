`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:00 03/05/2019 
// Design Name: 
// Module Name:    bit3counter 
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
module bit3counter(rst, clk, count);
	input rst, clk;
	output reg [2:0] count;
	
	always @ (posedge clk or posedge rst)
	begin
		count = (rst) ?	3'b000: (count + 1);
	end

endmodule
