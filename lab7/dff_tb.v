`timescale 1ns/1ns
`include "dff.v"
module dff_tb();
reg D,clk, reset;
wire Q;
dff e1(D,clk,Q,reset);
initial begin
$dumpfile("dff_tb.vcd");
$dumpvars(0, dff_tb);
clk=0;
forever #10 clk=~clk;
end 
initial begin
 D=1; reset=0; #10;
 D=1; reset=1; #10;
 D=0; reset =0; #10;
 D=1; reset =0; #10;
$display("success"); $finish;
end 
endmodule
