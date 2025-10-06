`timescale 1ns/1ns
`include "reg6.v"
module reg6_tb();
reg [5:0]I;
reg clk;
wire [5:0]A;
reg6 a1(I,clk, A);
initial
begin
clk=0;
forever #20 clk = ~clk;
end
initial
begin
$dumpfile("reg6_tb.vcd");
$dumpvars(0,reg6_tb);
I = 12; #20;
I = 8; #20;
$display("success");
$finish;
end
endmodule
