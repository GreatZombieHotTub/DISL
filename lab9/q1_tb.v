`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg E,x,clk,reset;
wire A,B;
q1 e1(E,x,clk,A,B,reset);
initial begin
$dumpfile("q1_tb.vcd");
$dumpvars(0, q1_tb);
clk=0;
forever #10 clk=~clk;
end 
initial begin
 E=1; x=1; #20;
 E=1; x=1; #20;
 E=1; x=1; #20;
 E=1; x=1; #20;
 E=1; x=0; #20;
 E=1; x=0; #20;
 
$display("success"); $finish;
end 
endmodule
