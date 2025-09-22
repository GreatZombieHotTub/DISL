`include "dec3to8.v"

module dec4to16(w,e,y);
input [3:0]w;
input e;
output [15:0]y;
wire e1,e2;

assign e1=~w[3]&e;
assign e2=w[3]&e;
dec3to8 s0(w[2:0], e1, y[7:0]);
dec3to8 s1(w[2:0], e2, y[15:8]);

endmodule
