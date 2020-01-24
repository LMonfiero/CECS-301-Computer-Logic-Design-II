`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:31:44 04/22/2019
// Design Name:   RegFile
// Module Name:   C:/Users/TramelMac/Dropbox/CSULB_Current/301/Projects/RegFile/RegFile/RegFile_tf.v
// Project Name:  RegFile
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegFile_tf;

	// Inputs
	reg clk;
	reg rst;
	reg write;
	reg step;
	reg [2:0] RdAdrsA;
	reg [2:0] RdAdrsB;
	reg [2:0] WtAdrs;
	reg [15:0] WtData;

	// Outputs
	wire [15:0] OperA;
	wire [15:0] OperB;
	
	// variables
	integer     i;

	// Instantiate the Unit Under Test (UUT)
	RegFile uut (
		.clk(clk), 
		.rst(rst), 
		.write(write), 
		.step(step), 
		.RdAdrsA(RdAdrsA), 
		.RdAdrsB(RdAdrsB), 
		.WtAdrs(WtAdrs), 
		.WtData(WtData), 
		.OperA(OperA), 
		.OperB(OperB)
	);

   always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		write = 0;
		step = 0;
		RdAdrsA = 0;
		RdAdrsB = 0;
		WtAdrs = 0;
		WtData = 16'hABCD;

		// Wait 100 ns for global reset to finish
		#100 rst = 0;
        
		// Add stimulus here
		// first pass - no step

      for (i=0; i<8; i=i+1)
		   begin
			@(negedge clk)
			WtAdrs = i;
			WtData = WtData + 16'h1010;
			write = 1;
			@(negedge clk)
			write = 0;
			end

		// second pass - with step

      for (i=0; i<8; i=i+1)
		   begin
			@(negedge clk)
			WtAdrs = i;
			WtData = WtData + 16'h1010;
			write = 1;
			step = 1;
			@(negedge clk)
			write = 0;
			step = 0;
			end
			
	end
      
endmodule

