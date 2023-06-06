module problem5(
	input A,B,C,D,
	output F1,F2
);

logic D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;
problem3_4x16 inst0( .enable(1'b1), .A3(A), .A2(B), .A1(C), .A0(D), .D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .D8(D8), .D9(D9), .D10(D10), .D11(D11), .D12(D12), .D13(D13), .D14(D14), .D15(D15));
//F1 icin
logic w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14;
problem2_or inst1(.A(D1),.B(D3),.C(w0));
problem2_or inst2(.A(D7),.B(D11),.C(w1));
problem2_or inst3(.A(D12),.B(D13),.C(w2));
problem2_or inst4(.A(w0),.B(w1),.C(w3));
problem2_or inst5(.A(w2),.B(D15),.C(w4));
problem2_or inst6(.A(w3),.B(w4),.C(F1));

//F2 icin

problem2_or inst7(.A(D1),.B(D6),.C(w5));
problem2_or inst8(.A(D8),.B(D9),.C(w6));
problem2_or inst9(.A(D10),.B(D11),.C(w7));
problem2_or inst10(.A(D12),.B(D13),.C(w8));
problem2_or inst11(.A(D14),.B(D15),.C(w9));
problem2_or inst12(.A(w5),.B(w6),.C(w10));
problem2_or inst13(.A(w7),.B(w8),.C(w11));
problem2_or inst14(.A(w10),.B(w11),.C(w12));
problem2_or inst15(.A(w12),.B(w9),.C(w13));
problem2_or inst16(.A(w13),.B(D0),.C(w14));
assign F2=w14;
endmodule