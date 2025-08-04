module ex2(a,b,c,d,f);
input a, b, c, d;
output f;
//continuous assignment
assign f=(b&~c&~d)|(~b&d)|(~b&c);
endmodule
