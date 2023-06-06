module problem2_8x1(
  input logic I0, I1, I2, I3, I4, I5, I6, I7,
  input logic S0, S1, S3,
  output logic Out
);
  logic w0, w1;
  problem2_4x1 inst0(.S1(S1), .S0(S0), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .Out(w0));
  problem2_4x1 inst1(.S1(S1), .S0(S0), .I0(I4), .I1(I5), .I2(I6), .I3(I7), .Out(w1));
  problem1 inst2(.s(S3), .x0(w0), .x1(w1), .o(Out));
endmodule
