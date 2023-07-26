`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:56:19 07/26/2023
// Design Name:   Halfadd
// Module Name:   D:/Roselin/GoogleForm/Halfadd_tb.v
// Project Name:  GoogleForm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Halfadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Halfadd_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	Halfadd uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial 
	begin
		// Initialize Inputs
		a = 1'b0;
		b = 1'b0;

		// Wait 100 ns for global reset to finish
		#100 a=1'b0; b=1'b1;
		#100 a=1'b1; b=1'b0;
		#100 a=1'b1; b=1'b1;
        
		// Add stimulus here

	end
      
endmodule

