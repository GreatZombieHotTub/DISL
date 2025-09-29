`timescale 1ns/1ns
`include "jkff.v"
module jkff_tb();
reg J,K,clk, reset;
wire Q;
jkff e1(J,K,clk,Q,reset);
initial begin
$dumpfile("jkff_tb.vcd");
$dumpvars(0, jkff_tb);
clk=0;
forever #10 clk=~clk;
end 
initial begin
 J=0; K=0; reset=0; #10;
 J=1; K=0; reset=0; #10;

 J=0; K=1; reset=0; #10;
  J=1; K=1; reset=0; #10;
 J=1; K=1; reset=0; #10;
 J=1; K=1; reset=0; #10;
//not tested 01 where Q=0.
$display("success"); $finish;
end 
endmodule
