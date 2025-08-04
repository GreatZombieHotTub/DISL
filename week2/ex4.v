module ex4(a,b,c,d,f);
input a, b, c, d;
output f;
//continuous assignment
assign f=(a|~b|~c)&(~a|~b|c)&(~a|b|~d)&(~a|b|~c);
//assign f=(a|~b|~c|d)&(~a|~b|c|d)&(~a|b|c|~d)&(~a|b|~c|~d)&(~a|b|~c|d);
//assign f=(~b|c|d)&(~a|b|~d)&(a|~b|~c)&(~a|b|~c);
endmodule


