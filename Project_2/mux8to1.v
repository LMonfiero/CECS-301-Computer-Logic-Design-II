`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:00 03/04/2019 
// Design Name: 
// Module Name:    mux8to1 
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
module mux8to1(clock, reset, out);
input clock, reset;
output reg [3:0] out;

wire [2:0] Cathode;
wire [31:0] Ci;

cathode CA (.clock(clock),
            .reset(reset),
            .Cathode(Cathode));
count32 CO (.clk(clock),
            .rst(reset),
            .q(Ci));

always @ (*)
    begin
        case (Cathode)
            3'b000  :   out = Ci[3:0];
            3'b001  :   out = Ci[7:4];
            3'b010  :   out = Ci[11:8];
            3'b011  :   out = Ci[15:12];
            3'b100  :   out = Ci[19:16];
            3'b101  :   out = Ci[23:20];
            3'b110  :   out = Ci[27:24];
            3'b111  :   out = Ci[31:28];
            default :   out = 4'h0;
        endcase
    end
endmodule
