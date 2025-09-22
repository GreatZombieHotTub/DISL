module en164(w,y,j);
input [15:0]w;
output reg [3:0]y;
output reg j;
integer k;
//NOT FINISHED
always@(*) begin
j=1;
  casex(w)
   4'b001: y=2'b00;
   4'b001x: y=2'b01;
   4'b01xx: y=2'b10;
   4'b1xxx: y=2'b11;
   4'b0000: begin 
            y=2'bxx;
            j=0;
            end
  endcase end
  
endmodule
