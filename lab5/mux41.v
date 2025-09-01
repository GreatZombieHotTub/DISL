`include "mux21.v"
module mux41(i,s,f);
input [3:0]i;
input [1:0]s;
output f;
wire f1,f2;
mux21 s0({i[1],i[0]},s[0],f1);
mux21 s1({i[3],i[2]},s[0],f2);
mux21 s2({f2,f1},s[1],f);
endmodule
