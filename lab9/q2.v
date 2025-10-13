module q2(clk,reset,x,A,B);
input clk,reset,x;
output A,B;
tff fA(~A&B|B&~x, clk, A, reset);
tff fB(~x&A|~x&~B|x&~A&B,clk,B,reset);
endmodule


module tff(T,clk,Q,reset);
input T, clk, reset;
output Q;
reg Q;
initial Q = 0; //initialize dont care otherwise when clk=0, reset=0, Q=x
always@(posedge clk)
 if(reset) Q<=0;
 else 
  if(T==0) Q<=Q;
  else if(T==1) Q<=~Q;
endmodule
