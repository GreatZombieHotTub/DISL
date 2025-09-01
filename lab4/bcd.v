`include "full.v"
`timescale 1ns/1ns

module bcd_adder(a,b,cin,s,cout2);

input [3:0]a,b;
input cin;
output[3:0]s;
output cout2;
wire [3:0]z;
wire k,c;
four_bit_adder four_bit_adder_instance0(a,b,z,cin,k);
assign c = k|(z[3]&z[2])|(z[1]&z[3]);
four_bit_adder four_bit_adder_instance1(z,{1'b0,c,c,1'b0},s,cin,cout2);
endmodule


module adder4 (carryin, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);
input carryin, x3, x2, x1, x0, y3, y2, y1, y0;
output s3, s2, s1, s0, carryout;
full stage0 (carryin, x0, y0, s0, c1);
full stage1 (c1, x1, y1, s1, c2);
full stage2 (c2, x2, y2, s2, c3);
full stage3 (c3, x3, y3, s3, carryout);
endmodule
