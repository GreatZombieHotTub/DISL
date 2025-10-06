module reg6(I,clk,A);
input [5:0]I;
input clk;
output [5:0]A;
dff s1(I[5],clk,A[5]);
dff s2(I[4],clk,A[4]);
dff s3(I[3],clk,A[3]);
dff s4(I[2],clk,A[2]);
dff s5(I[1],clk,A[1]);
dff s6(I[0],clk,A[0]);
endmodule


module dff (D, Clock, Q);
input D, Clock;
output Q;
reg Q;
always @(posedge Clock)
Q<= D;
endmodule
