`timescale 1ns/1ns
`include "dec38.v"

module dec38_tb;
reg [2:0]w;
reg e;
wire [7:0]y;
dec38 e1(w,e,y);
initial begin
$dumpfile("dec38_tb.vcd");   
$dumpvars(0, dec38_tb);
w=2; e=1; #10;
w=6; e=1; #10;
w=7; e=0; #10;

        $display("success");
        $finish;
    end
endmodule
        

