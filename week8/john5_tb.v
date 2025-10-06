`timescale 1ns/1ns
`include "john5.v"

module john5_tb();
    reg clk;
    wire [4:0] q;
    john5 e1(clk,q);

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        $dumpfile("john5_tb.vcd");
        $dumpvars(0, john5_tb);

        #100;  // run simulation for some time
        $display("Simulation finished");
        $finish;
    end
endmodule

