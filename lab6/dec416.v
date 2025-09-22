`include "dec2to4.v"
module dec416(w,e,y);
input [3:0]w;
input e;
output [15:0]y;
wire e1,e2,e3,e4;
assign e1=~w[3]&~w[2]&e;
assign e2=~w[3]&w[2]&e;
assign e3=w[3]&~w[2]&e;
assign e4=w[3]&w[2]&e;

dec2to4 s0(w[1:0], e1, y[3:0]);
dec2to4 s1(w[1:0], e2, y[7:4]);
dec2to4 s2(w[1:0], e3, y[11:8]);
dec2to4 s3(w[1:0], e4, y[15:12]);

endmodule
