module q1(E,x,clk,A,B,reset);
input E,x,clk,reset;
output A,B;
jkff ffA((E&~x&~B)|(E&x&B), (E&~x&~B)|(E&x&B), clk, A, reset);
jkff ffB(E,E,clk,B,reset);
endmodule

module jkff(J,K,clk,Q,reset);
input J,K, clk, reset;
output Q;
reg Q;
initial Q = 0; //initialize dont care otherwise when clk=0, reset=0, Q=x
always@(posedge clk)
 if(reset) Q<=0;
 else begin
  case({J,K})
    2'b00: Q<=Q;
    2'b01: Q<=0;
    2'b10: Q<=1;
    2'b11: Q<=~Q; 
   endcase end
endmodule
