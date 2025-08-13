module ex4(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=~( (~(~b&~d)) & (~(~a&d)) );
endmodule
