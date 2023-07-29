//20T118
module full_subractor(
    input x,y,z,
    output b0,di
    );
assign b0=(~x&y)+(~(x^y))&z;
assign di=(x^y)^z;

endmodule
