module nbit_reg #(parameter N = 8) (
    input clk,
    input [N-1:0] d,
    output reg [N-1:0] q
);
    initial q = 0; // optional, for simulation

    always @(posedge clk)
        q <= d;
endmodule

