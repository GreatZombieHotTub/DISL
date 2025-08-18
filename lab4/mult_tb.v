`timescale 1ns/1ps
`include "mult.v"
module mult_tb;
  reg  [1:0] a, b;
  wire [3:0] p;
mult e(a,b,p);

initial 
begin
$dumpfile("mult_tb.vcd");   // for waveform (GTKWave)
$dumpvars(0, mult_tb);

a = 2'b10; b = 2'b01; #5//2*1=2
a = 2'b11; b = 2'b11; #5//3*3=9


$display("Success");
end
endmodule

