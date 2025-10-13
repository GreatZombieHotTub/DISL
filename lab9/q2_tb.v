`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
reg x,clk,reset;
wire A,B;
q2 e1(clk,reset,x,A,B);
initial begin
$dumpfile("q2_tb.vcd");
$dumpvars(0, q2_tb);
clk=0;
forever #10 clk=~clk;
end 
initial begin
 x=1; #20;
 x=0; #20;
 x=1; #20;
 x=1; #20;
 x=0; #20;
 x=0; #20;
 
$display("success"); $finish;
end 
endmodule
