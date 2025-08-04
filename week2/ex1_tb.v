`timescale 1ns/1ns
`include "ex1.v"

module ex1_tb();
reg a,b,c,d; //inputs
wire f; //outputs
ex1 e(a,b,c,d,f);

initial 
begin

$dumpfile("ex1_tb.vcd"); //make sure waveform is getting stored, store inp/out waveforms
$dumpvars(0,ex1_tb); //only testbench module name- example_tb

a=1'b0; b=1'b0; c=1'b0; d=1'b0;
#10;
a=1'b0; b=1'b0; c=1'b0; d=1'b1;
#10;
a=1'b0; b=1'b0; c=1'b1; d=1'b0; //0010
#10; 
a=1'b0; b=1'b0; c=1'b1; d=1'b1;//0011
#10; 
a=1'b0; b=1'b1; c=1'b0; d=1'b0;
#10;
a=1'b0; b=1'b1; c=1'b0; d=1'b1;
#10;
a=1'b0; b=1'b1; c=1'b1; d=1'b0;
#10;
a=1'b0; b=1'b1; c=1'b1; d=1'b1;
#10;
a=1'b1; b=1'b0; c=1'b0; d=1'b0; //1000
#10;
a=1'b1; b=1'b0; c=1'b0; d=1'b1;
#10;
a=1'b1; b=1'b0; c=1'b1; d=1'b0;
#10;
a=1'b1; b=1'b0; c=1'b1; d=1'b1;
#10;
a=1'b1; b=1'b1; c=1'b0; d=1'b0;
#10;
a=1'b1; b=1'b1; c=1'b0; d=1'b1;
#10;
a=1'b1; b=1'b1; c=1'b1; d=1'b0;
#10;
a=1'b1; b=1'b1; c=1'b1; d=1'b1;
#10;

$display("Success");
end
endmodule
