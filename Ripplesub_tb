//20T118
module Ripplecarry_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	Ripplesub uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a=4'b0001;b=4'b0011;c=0;
		
		// Wait 100 ns for global reset to finish
		#100 a=4'b0101;b=4'b1011;
      #100 a=4'b1101;b=4'b0011;
	   #100 a=4'b0011;b=4'b0011;
      #100 a=4'b1001;b=4'b0011;c=1;
	   #100 a=4'b0001;b=4'b1001;
		#100 a=4'b1111;b=4'b1101;c=0;
	   #100 $finish;

	end
      
endmodule
