module ex1(a,b,c,d,f);
input a,b,c,d;
output f;
assign f= ~( (~(~a&~c)) & (~(b&~c)) & (~(~a&d)) & (~(b&d)) );
endmodule
