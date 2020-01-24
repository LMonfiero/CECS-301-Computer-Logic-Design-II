`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:40 02/26/2019 
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
module count32(clk, rst, q);
input clk, rst;
output [31:0] q;

reg [31:0] q;

always @ (posedge clk, posedge rst)
    if (rst) q <= 32'b0;
    else q <= q + 32'b1;


endmodule
