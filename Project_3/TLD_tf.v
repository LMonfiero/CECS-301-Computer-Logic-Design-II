`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:35:27 03/27/2019
// Design Name:   TLD
// Module Name:   C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/Project_3/TLD_tf.v
// Project Name:  Project_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TLD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TLD_tf;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] Anode;
	wire [7:0] Cathode;

	// Instantiate the Unit Under Test (UUT)
	TLD uut (
		.clk(clk), 
		.rst(rst), 
		.Anode(Anode), 
		.Cathode(Cathode));

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		i = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i=0; i < 256; i = i + 1)
			begin
				clk = $random;
				rst = $random;
				$write(".");
				end
	end
      
endmodule

