module problem2_4x1(
	input logic I0,I1,I2,I3,
	input logic S0, S1,
	output logic Out
);
logic w0,w1;
problem1 inst0 (.s(S0), .x0(I0), .x1(I1), .o(w0));
problem1 inst1 (.s(S0), .x0(I2), .x1(I3), .o(w1));
problem1 inst2 (.s(S1), .x0(w0), .x1(w1), .o(Out));
endmodule 
