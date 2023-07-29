//20T118
module Ripplesub(
    input [3:0] a,b,
    input c,
    output [3:0] s,
    output cout
    );
 wire c1,c2,c3;
full_subractor fa1(a[0],b[0],c,s[0],c1);
full_subractor fa2(a[1],b[1],c1,s[1],c2);
full_subractor fa3(a[2],b[2],c2,s[2],c3);
full_subractor fa4(a[3],b[3],c3,s[3],cout);


endmodule
