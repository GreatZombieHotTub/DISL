`timescale 1ns/1ns
`include "async4.v"

module async4_tb;
    reg clk, reset;
    wire [3:0] q;

    // Instantiate the counter
    async4 uut (.clk(clk), .reset(reset), .q(q));

    // Clock generation
    initial begin
        clk = 0;
        forever #20 clk = ~clk;   // Clock period = 40ns
    end

    // Stimulus block
    initial begin
        $dumpfile("async4_tb.vcd");
        $dumpvars(0, async4_tb);

        reset = 1;  #25;          // Apply reset
        reset = 0;                // Release reset

        #240;                     // Let counter run
        $display("Simulation finished successfully!");
        $finish;
    end
endmodule

