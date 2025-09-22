`timescale 1ns/1ns
`include "dec4to16.v"

module dec4to16_tb;
reg [3:0]w;
reg e;
wire [15:0]y;
dec4to16 e1(w,e,y);
initial begin
$dumpfile("dec4to16_tb.vcd");   
$dumpvars(0, dec4to16_tb);
w=4'b0000; e=1; #10;
w=11; e=1; #10;
w=7; e=0; #10;

        $display("success");
        $finish;
    end
endmodule
