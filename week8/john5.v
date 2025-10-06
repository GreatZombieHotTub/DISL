module john5(clk, q);
input clk;
output [4:0] q;   // must be a wire (default type is wire)
                   // no need for reg or initial assignment
    wire fb;

    assign fb = ~q[0];
dff s1(fb,clk, q[4]);
dff s2(q[4],clk, q[3]);
dff s3(q[3],clk, q[2]);
dff s4(q[2],clk, q[1]);
dff s5(q[1],clk, q[0]);
endmodule


module dff (D, Clock, Q);
input D, Clock;
output reg Q;     // reg inside the flip-flop, that's fine
initial Q=0;
always @(posedge Clock)
    Q <= D;
endmodule
