module problem2_full(
	input A,B,Cin,
	output S,Cout
);
logic w0,w1,w2;
logic C;
problem2_half inst0(.A(A),.B(B),.S(w0),.C(w1));
problem2_half inst1(.A(w0),.B(Cin),.S(S),.C(w2));
assign Cout=w1|w2;
endmodule

