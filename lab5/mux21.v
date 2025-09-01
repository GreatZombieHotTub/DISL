module mux21(i,s,f);
input [1:0]i;
input s;
output f; reg f;
always @(i or s)
 if(s==0)
  f=i[0];
 else if(s==1)
  f=i[1];

endmodule
