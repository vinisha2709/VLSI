//20T118
module SISO(
    input d,clk,
    output q
    );
wire q1,q2,q3;
    dflipflop g1(d, clk, q1);
    dflipflop g2(q1, clk, q2);
    dflipflop g3(q2, clk, q3);
    dflipflop g4(q3, clk, q);

endmodule
