module mult (a, b, p);
  input  [1:0] a, b;   // 2-bit inputs
  output [3:0] p;      // 4-bit product

  wire p0, p1, p2, p3;
  wire s1, c1, s2, c2;

  // Partial products
  assign p0 = a[0] & b[0];    // Least significant bit
  assign p1 = a[0] & b[1];
  assign p2 = a[1] & b[0];
  assign p3 = a[1] & b[1];

  // Add p1 and p2 using half adder
  half h1(p1, p2, s1, c1);

  // Add s1 and p3 (shifted left by 1)
  half h2(c1, p3, s2, c2);

  // Final product assignment
  assign p[0] = p0;
  assign p[1] = s1;
  assign p[2] = s2;  // Combine carries properly
  assign p[3] = c2;

endmodule

module half(x, y, sum, carry);
  input x, y;
  output sum, carry;

  assign sum   = x ^ y;
  assign carry = x & y;
endmodule



