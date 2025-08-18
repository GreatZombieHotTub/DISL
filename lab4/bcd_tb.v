`timescale 1ns/1ps
`include "bcd.v"

module bcd_tb;
    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum, cout;

    bcd uut(a, b, cin, sum, cout);

    initial 
    begin
        $dumpfile("bcd_tb.vcd");   
        $dumpvars(0, bcd_tb);

        a = 4'd9; b = 4'd9; cin = 0; #10;   // 9+9 = 18
        a = 4'd7; b = 4'd5; cin = 0; #10;   // 7+5 = 12
        a = 4'd3; b = 4'd4; cin = 0; #10;   // 3+4 = 7
        a = 4'd8; b = 4'd7; cin = 0; #10;   // 8+7 = 15

        $display("success");
        $finish;
    end
endmodule
