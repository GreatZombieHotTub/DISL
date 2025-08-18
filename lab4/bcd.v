module bcd(
    input  [3:0] a,    // first bcd digit (0–9)
    input  [3:0] b,    // second bcd digit (0–9)
    input        cin,  // carry in
    output [3:0] sum,  // bcd sum (single digit)
    output [3:0] cout  // bcd carry out (single digit, can be another bcd digit)
);

    wire [4:0] binary_sum;   
    wire [4:0] corrected_sum;
    wire       correction_needed;

    // step 1: binary addition
    assign binary_sum = a + b + cin;

    // step 2: check if correction is needed
    assign correction_needed = (binary_sum > 9);

    // step 3: add 6 if correction is needed
    assign corrected_sum = correction_needed ? (binary_sum + 6) : binary_sum;

    // step 4: separate into bcd sum + carry
    assign sum  = corrected_sum[3:0];
    assign cout = correction_needed ? 4'b0001 : 4'b0000;

endmodule


