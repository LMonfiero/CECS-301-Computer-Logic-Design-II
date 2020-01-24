`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:06 03/04/2019 
// Design Name: 
// Module Name:    rotator 
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
module rotator(clk, rst, rotate);
input clk, rst;
output rotate;

reg [17:0] counter;

assign rotate = (counter == 18'd199_999);

always @ (posedge clk, posedge rst)
    if (rst) counter <= 18'b0; else
    if (rotate) counter <= 18'b0;
    else counter <= counter + 18'b1;


endmodule
