module dec3to8(w,e,y);
input [2:0]w;
input e;
output reg [7:0]y;
integer k;
always@(w or e) begin
y=8'b00000000;
for(k=0; k<8; k=k+1) 
 if((w==k) && e==1) y[k]=1;
 end
endmodule
