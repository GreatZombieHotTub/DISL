module ring (
    input clk,
    input reset,
    output [3:0] q
);
    // Feedback reversed: now '1' moves left-to-right
    dff_preset1 ff3 (clk, reset, q[0], q[3]); // q[3] starts as 1
    dff ff2      (clk, reset, q[3], q[2]);
    dff ff1      (clk, reset, q[2], q[1]);
    dff ff0      (clk, reset, q[1], q[0]);
endmodule


// Normal D flip-flop (resets to 0)
module dff (
    input clk,
    input reset,
    input d,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule


// D flip-flop with preset = 1 (MSB starts high)
module dff_preset1 (
    input clk,
    input reset,
    input d,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b1;  // start with q[3] = 1
        else
            q <= d;
    end
endmodule


