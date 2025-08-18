`timescale 1ns/1ns
`include "full.v"

module full_tb();
reg Cin,x,y;
wire sum,Cout;
full e1(Cin,x,y,sum,Cout);
initial
begin

$dumpfile("full_tb.vcd");
$dumpvars(0, full_tb);

Cin=1'b0; x=1'b1; y=1'b0; #10;
Cin=1'b0; x=1'b1; y=1'b1; #10;
Cin=1'b1; x=1'b1; y=1'b1; #10;

$display("Success");
end
endmodule
