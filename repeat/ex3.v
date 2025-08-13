module ex3(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=~( (~(~a|~c)) | (~(d)) );
endmodule
