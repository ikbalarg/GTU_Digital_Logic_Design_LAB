module problem2(
	input Cin,A0,B0,A1,B1,A2,B2,A3,B3,A4,B4,
	output S0,S1,S2,S3,S4,Cout
);
logic w0,w1,w2,w3;
problem2_full inst0(.A(A0),.B(B0),.Cin(Cin),.S(S0),.Cout(w0));
problem2_full inst1(.A(A1),.B(B1),.Cin(w0),.S(S1),.Cout(w1));
problem2_full inst2(.A(A2),.B(B2),.Cin(w1),.S(S2),.Cout(w2));
problem2_full inst3(.A(A3),.B(B3),.Cin(w2),.S(S3),.Cout(w3));
problem2_full inst4(.A(A4),.B(B4),.Cin(w3),.S(S4),.Cout(Cout));
endmodule
