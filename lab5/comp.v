//Unsigned comparator
module comp(A,B,altb,agtb,aeqb);
input [3:0]A,B;
output altb, agtb, aeqb;
wire i0,i1,i2,i3;
assign i3=~(A[3]^B[3]);
assign i2=~(A[2]^B[2]);
assign i1=~(A[1]^B[1]);
assign i0=~(A[0]^B[0]);
assign aeqb=i0&i1&i2&i3;
assign agtb=(A[3]&~B[3])|(i3&A[2]&~B[2])|(i3&i2&A[1]&~B[1])|(i3&i2&i1&A[0]&~B[0]);
assign altb=~(aeqb|agtb);
endmodule

