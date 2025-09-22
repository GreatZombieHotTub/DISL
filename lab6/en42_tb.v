`timescale 1ns/1ns
`include "en42.v"

module en42_tb;
reg [3:0]w;
wire j;
wire [1:0]y;
en42 e1(w,y,j);
initial begin
$dumpfile("en42_tb.vcd");   
$dumpvars(0, en42_tb);
w=4'b0000;  #10;
w=11;  #10;
w=7; #10;

        $display("success");
        $finish;
    end
endmodule
