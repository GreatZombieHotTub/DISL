module full(Cin, x, y, sum, Cout);
  input Cin, x, y;
  output sum, Cout;
  wire s1, c1, c2;

  half stage0(x, y, s1, c1);
  half stage1(Cin, s1, sum, c2);

  assign Cout = c1 | c2;
endmodule

module half(x, y, sum, carry);
  input x, y;
  output sum, carry;

  assign sum   = x ^ y;
  assign carry = x & y;
endmodule
 
 


