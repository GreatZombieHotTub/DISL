module ex3(a,b,c,d,f);
input a, b, c, d;
output f;
//continuous assignment
assign f=(~b|d)&(b|c);
endmodule
