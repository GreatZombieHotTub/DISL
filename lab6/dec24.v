module dec24(w,e,y);
input [1:0]w;
input e;
output reg [3:0]y;

always@(w or e) begin 
if(e==1) begin
     if (w == 2'b00)
        y = 4'b0001;   // Y0 high
     else if (w == 2'b01)
        y = 4'b0010;   // Y1 high
     else if (w == 2'b10)
        y = 4'b0100;   // Y2 high
     else if (w == 2'b11)
        y = 4'b1000;   // Y3 high
     end
else begin
  y= 4'b0000; //all o/p low when enable low
  end

end
endmodule
