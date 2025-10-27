`timescale 1ns/1ns
`include "q3.v"

module q3_tb;
    reg clk;
    reg reset;
    wire [2:0] q;

    q3 uut (.clk(clk), .reset(reset), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;   // Clock toggles every 5ns
    end

    initial begin
        $dumpfile("q3_tb.vcd");
        $dumpvars(0, q3_tb);

        reset = 1;
        #10 reset = 0;
        #50 $finish;
    end

    initial begin
        $monitor("t=%0t | clk=%b | reset=%b | q=%b", $time, clk, reset, q);
    end
endmodule



