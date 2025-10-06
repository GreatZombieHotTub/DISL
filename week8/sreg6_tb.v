`timescale 1ns/1ns
`include "sreg6.v"
module sreg6_tb();
reg w;
reg clk;
wire [5:0]q;
sreg6 a1(w,clk, q);
initial
begin
clk=0;
forever #20 clk = ~clk;
end
initial
begin
$dumpfile("sreg6_tb.vcd");
$dumpvars(0,sreg6_tb);
w=1; #40;
w=0; #40;
w=1; #40;
w=0; #40;
w=0; #40;
w=0; #40;
$display("success");
$finish;
end
endmodule
