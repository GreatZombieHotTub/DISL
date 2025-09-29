`timescale 1ns/1ns
`include "tff.v"
module tff_tb();
reg T,clk, reset;
wire Q;
tff e1(T,clk,Q,reset);
initial begin
$dumpfile("tff_tb.vcd");
$dumpvars(0, tff_tb);
clk=0;
forever #10 clk=~clk;
end 
initial begin
 T=1; reset=1; #10;
 T=1; reset=1; #10;
 T=1; reset =1; #10;
 T=0; reset =0; #10;
$display("success"); $finish;
end 
endmodule
