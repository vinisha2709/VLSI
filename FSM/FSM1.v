//20T118

module FSM1(
    input rst,clk,x,
    output reg y
    );
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;
reg [1:0] nxt,pre;
always @(posedge clk,posedge rst)
begin
   if(rst) begin
	   pre=s0;
	end
   else
      pre=nxt;	
end
always @(pre,x)
begin
   case(pre)
	s0: begin 
	    y=1'b0;
	    if(x) nxt=s1;
	    else nxt=s0;
	end
	s1: begin
	    y=1'b0;
		 if(x) nxt=s2;
		 else nxt=s1;
	end
   s2: begin
      y=1'b0;
      if(x) nxt=s3;
      else	nxt=s2;
   end
   s3: begin
      y=1'b1;
      if(x) nxt=s0;
      else nxt=s3;
   end
   endcase

end	
endmodule
