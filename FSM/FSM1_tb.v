//20T118
module FSM1_tb;

	// Inputs
	reg rst;
	reg clk;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	FSM1 uut (
		.rst(rst), 
		.clk(clk), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
		#100 rst=1; clk=1;x=1;
		#100 rst=1; clk=0;x=1;
		#100 rst=1; clk=1;x=0;
		#100 rst=1; clk=0;x=1;
        
		// Add stimulus here

	end
      
endmodule

