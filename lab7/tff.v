module tff(T,clk,Q,reset);
input T, clk, reset;
output Q;
reg Q;
initial Q = 0; //initialize dont care otherwise when clk=0, reset=0, Q=x
always@(negedge clk or negedge reset)
 if(!reset) Q<=0;
 else 
  if(T==0) Q<=Q;
  else if(T==1) Q<=~Q;
endmodule
