//20T118
module dflipflop(
    input d,clk,
    output reg q
    );
always @(posedge clk)
begin
q = d;
end

endmodule
