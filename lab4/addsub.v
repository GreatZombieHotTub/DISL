module addsub(M,x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0);
 input M,x3, x2, x1, x0, y3, y2, y1, y0;
 output s3,s2,s1,s0;
 wire cout;
 assign y0_=y0^M;
 assign y1_=y1^M;
 assign y2_=y2^M;
 assign y3_=y3^M;
 adder4 stage0(M,x3, x2, x1, x0, y3_, y2_, y1_, y0_, s3, s2, s1, s0,cout);
 
endmodule

module adder4 (carryin, x3, x2, x1, x0, y3, y2, y1, y0, s3, s2, s1, s0, carryout);
input carryin, x3, x2, x1, x0, y3, y2, y1, y0;
output s3, s2, s1, s0, carryout;
fulladd stage0 (carryin, x0, y0, s0, c1);
fulladd stage1 (c1, x1, y1, s1, c2);
fulladd stage2 (c2, x2, y2, s2, c3);
fulladd stage3 (c3, x3, y3, s3, carryout);
endmodule


module fulladd (Cin, x, y, s, Cout);
input Cin, x, y;
output s, Cout;
assign s = x ^ y ^ Cin;
assign Cout = (x & y) | (x & Cin) | (y & Cin);
endmodule
