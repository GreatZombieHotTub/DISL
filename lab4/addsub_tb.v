`timescale 1ns/1ns
`include "addsub.v"

module addsub_tb();
reg M,x3, x2, x1, x0, y3, y2, y1, y0;
wire s3, s2, s1, s0;
addsub e1(M,x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0);
initial
begin

$dumpfile("addsub_tb.vcd");
$dumpvars(0, addsub_tb);

M=1'b0; x3=1'b0; x2=1'b1; x1=1'b1; x0=1'b0;y3=1'b0;y2=1'b0;y1=1'b1;y0=1'b1; #10;
M=1'b1; x3=1'b0; x2=1'b1; x1=1'b1; x0=1'b0;y3=1'b0;y2=1'b0;y1=1'b1;y0=1'b1; #10;

$display("Success");
end
endmodule
