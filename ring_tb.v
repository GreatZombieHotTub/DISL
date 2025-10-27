`timescale 1ns/1ns
`include "ring.v"

module ring_tb;
    reg clk, reset;
    wire [3:0] q;

    // Instantiate the design under test
    ring uut (clk, reset, q);

    // Clock generation (20 ns period)
    initial begin
        $dumpfile("ring_tb.vcd");
        $dumpvars(0, ring_tb);
        clk = 0;
        forever #10 clk = ~clk;
    end

    // Stimulus
    initial begin
        reset = 1; 
        #20;
        reset = 0;

        // Run for some time to observe full rotation
        #100;

        $display("success");
        $finish;
    end
endmodule


