`include "full.v"
`timescale 1ns/1ns

module bcd(a,b,cin,s,cout2);

input [3:0]a,b;
input cin;
output[3:0]s;
output cout2;
wire [3:0]z;
wire k,c;
adder4 four_bit_adder_instance0(a,b,z,cin,k);
assign c = k|(z[3]&z[2])|(z[1]&z[3]);
adder4 four_bit_adder_instance1(z,{1'b0,c,c,1'b0},s,cin,cout2);
endmodule

module adder4(a,b,s,cin,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [3:1] c;
full stage0(a[0],b[0],cin,s[0],c[1]);
full stage1(a[1],b[1],c[1],s[1],c[2]);
full stage2(a[2],b[2],c[2],s[2],c[3]);
full stage3(a[3],b[3],c[3],s[3],cout);
endmodule
