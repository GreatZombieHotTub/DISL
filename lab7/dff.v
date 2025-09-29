module dff(D,clk,Q,reset);
input D, clk, reset;
output Q;
reg Q;
initial Q = 0; //initialize dont care otherwise when clk=0, reset=0, Q=x
always@(posedge clk or posedge reset)
 if(reset) Q<=0;
 else Q<=D;

 endmodule
