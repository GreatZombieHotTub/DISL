`timescale 1ns/1ns
`include "nbit.v"

module nbit_tb;

    parameter N = 4;  // Define register width
    reg clk;
    reg [N-1:0] d;
    wire [N-1:0] q;

    // Instantiate the N-bit register
    nbit_reg #(N) e (.clk(clk), .d(d), .q(q));

    // Clock generation block
    initial begin
        clk = 0;
        forever #20 clk = ~clk;   // Clock period = 40ns
    end

    // Stimulus block
    initial begin
        $dumpfile("nbit_tb.vcd");
        $dumpvars(0, nbit_tb);

        d = 4'b0000;  #40;
        d = 4'b1010;  #40;
        d = 4'b1111;  #40;
        d = 4'b0101;  #40;

        #20;
        $display("Simulation finished successfully!");
        $finish;
    end

endmodule

