`include"mux4to1.v"

module mux16to1(w,s,f);
input [15:0]w;
input [3:0]s;
output f;
wire f1,f2,f3,f4;
mux4to1 s0(w[3:0],s[1:0],f1);
mux4to1 s1(w[7:4],s[1:0],f2);
mux4to1 s2(w[11:8],s[1:0],f3);
mux4to1 s3(w[15:12],s[1:0],f4);
  mux4to1 s4({f1,f2,f3,f4},s[3:2],f);
endmodule
