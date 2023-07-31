module Seq11111111(
    input clk,rst,seq,
    output reg  tick
    );
localparam a=3'b000;
localparam b=3'b001;
localparam c=3'b010;
localparam d=3'b011;
localparam e=3'b100;
localparam f=3'b101;
localparam g=3'b110;
localparam h=3'b111;                                              
reg [2:0] p_s,n_s;
always @ (posedge clk,posedge rst)
begin
   if(rst) p_s=a;
else  p_s=n_s;
end
always @ *
   begin
     p_s=n_s;
     tick=1'b0;
     case(p_s)
       a:if(seq)  n_s=b;
         else n_s=a;
       b:if(seq)  n_s=c;
         else n_s=a;
       c:if(seq)  n_s=d;
         else n_s=a;
       d:if(seq)  n_s=e;
         else n_s=a;
       e:if(seq)  n_s=f;
         else n_s=a;
       f:if(seq)  n_s=g;
         else n_s=a;
       g:if(seq) n_s=h;  
       else  n_s=a; 
       h:if(seq)begin
		   tick=1'b1;  n_s=h;
			end
			else
			 n_s=a;
       default:begin
         tick=1'b0;   n_s=a;
        end
     endcase
   end 

endmodule
