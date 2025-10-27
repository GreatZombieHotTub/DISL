`timescale 1ns/1ns
module async4 (
    input clk,        // Main clock input
    input reset,      // Asynchronous active-high reset
    output [3:0] q    // 4-bit counter output
);

    // Instantiate 4 T flip-flops
    t_ff_pos t0 (.clk(clk),  .reset(reset), .q(q[0]));    // LSB toggles on posedge of main clock
    t_ff_neg t1 (.clk(q[0]), .reset(reset), .q(q[1]));    // Next toggles on negedge of previous bit
    t_ff_neg t2 (.clk(q[1]), .reset(reset), .q(q[2]));    // Next toggles on negedge of previous bit
    t_ff_neg t3 (.clk(q[2]), .reset(reset), .q(q[3]));    // MSB toggles on negedge of previous bit

endmodule


// T flip-flop that toggles on POSITIVE edge
module t_ff_pos (
    input clk,
    input reset,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= ~q;  // Toggle output
    end
endmodule


// T flip-flop that toggles on NEGATIVE edge
module t_ff_neg (
    input clk,
    input reset,
    output reg q
);
    always @(negedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= ~q;  // Toggle output
    end
endmodule



