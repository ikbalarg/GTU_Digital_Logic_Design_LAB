module problem2_16x1(
  input logic I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15,
  input logic S0, S1, S2, S3,
  output logic Out
);
  logic w0, w1;
  problem2_8x1 inst0(.S2(S2), .S1(S1), .S0(S0), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .Out(w0));
  problem2_8x1 inst1(.S2(S2), .S1(S1), .S0(S0), .I0(I8), .I1(I9), .I2(I10), .I3(I11), .I4(I12), .I5(I13), .I6(I4), .I7(I15), .Out(w1));
  problem1 inst2(.s(S3), .x0(w0), .x1(w1), .o(Out));
endmodule

