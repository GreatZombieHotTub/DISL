module ex5(a,b,c,d,f);
input a, b, c, d;
output f;
//continuous assignment
assign f=(a&b&d)|(a&b&c)|(b&c&d)|(a&c&d);
endmodule
