`include"dec24.v"
module dec38(w,e,y);
input [2:0]w;
input e;
output [7:0]y;
wire e1,e2;

assign e1=~w[2]&e;
assign e2=w[2]&e;
dec24 s0(w[1:0], e1, y[3:0]);
dec24 s1(w[1:0], e2, y[7:4]);

endmodule
