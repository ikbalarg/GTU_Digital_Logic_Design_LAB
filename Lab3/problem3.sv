module nandgate(
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = ~(A & B);
endmodule
module problem3(
	input A1,A0,
	output  D0,D1,D2,D3
);
logic notD0,notD1,notD2,notD3;

nandgate inst0(.A(~A1),.B(~A0),.Y(notD0));
nandgate inst1(.A(~A1),.B(A0),.Y(notD1));
nandgate inst2(.A(A1),.B(~A0),.Y(notD2));
nandgate inst3(.A(A1),.B(A0),.Y(notD3));
assign D0=~notD0;
assign D1=~notD1;
assign D2=~notD2;
assign D3=~notD3;

endmodule
