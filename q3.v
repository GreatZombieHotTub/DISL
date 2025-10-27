module q3 (
    input clk,
    input reset,
    output reg [2:0] q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 3'b000;
        else begin
            case (q)
                3'b000: q <= 3'b001;
                3'b001: q <= 3'b011;
                3'b011: q <= 3'b101;
                3'b101: q <= 3'b111;
                3'b111: q <= 3'b000;
                default: q <= 3'b000;
            endcase
        end
    end
endmodule


