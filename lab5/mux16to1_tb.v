`timescale 1ns/1ns
`include "mux16to1.v"

module mux16to1_tb;
    reg  [15:0]i;
    reg [3:0]s;
    wire f;

    mux16to1 e(i,s,f);

    initial 
    begin
        $dumpfile("mux16to1_tb.vcd");   
        $dumpvars(0, mux16to1_tb);
        
        i=16'b1000100010001000; s=4'b1100; #10;
        i=16'b1000100010001000; s=4'b1111; #10;



        $display("success");
        $finish;
    end
endmodule
