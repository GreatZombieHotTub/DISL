`timescale 1ns/1ns
`include "comp.v"

module comp_tb;
    reg  [3:0] A,B;
    wire agtb, altb, aeqb;

    comp  e(A,B,altb, agtb, aeqb);

    initial 
    begin
        $dumpfile("comp_tb.vcd");   
        $dumpvars(0, comp_tb);

        A = 4'b1010; B = 7; #10;
        A = 7; B = 11; #10;
        A = 9; B =9; #10;


        $display("success");
        $finish;
    end
endmodule
