`timescale 1ns/1ns
`include "mux41.v"

module mux41_tb;
    reg  [3:0]i;
    reg [1:0]s;
    wire f;

    mux41  e(i,s,f);

    initial 
    begin
        $dumpfile("mux41_tb.vcd");   
        $dumpvars(0, mux41_tb);
        
        i=4'b1100; s=2'b11; #10;
        i=4'b1001; s=2'b01; #10;
        i=4'b1001; s=2'b00; #10;



        $display("success");
        $finish;
    end
endmodule
