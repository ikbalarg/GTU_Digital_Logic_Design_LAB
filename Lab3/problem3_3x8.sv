module problem2_and (
    input logic A,
    input logic B,
    output logic C
);	

    problem1 inst (.s(A), .x0(1'b0), .x1(B), .o(C));

endmodule 
module problem3_3x8(
	input logic enable,A2,A1,A0,
	output logic D0,D1,D2,D3,D4,D5,D6,D7
);
logic enD0,enD1,enD2,enD3,enD4,enD5,enD6,enD7;
logic eD0,eD1,eD2,eD3,eD4,eD5,eD6,eD7;
deneme inst0(.enable(~A2), .A1(A1), .A0(A0), .D0(enD0), .D1(enD1), .D2(enD2), .D3(enD3));
deneme inst1(.enable(A2), .A1(A1), .A0(A0), .D0(enD4), .D1(enD5), .D2(enD6), .D3(enD7));
problem2_and inst2(.A(enD0),.B(enable),.C(eD0));
problem2_and inst3(.A(enD1),.B(enable),.C(eD1));
problem2_and inst4(.A(enD2),.B(enable),.C(eD2));
problem2_and inst5(.A(enD3),.B(enable),.C(eD3));
problem2_and inst6(.A(enD4),.B(enable),.C(eD4));
problem2_and inst7(.A(enD5),.B(enable),.C(eD5));
problem2_and inst8(.A(enD6),.B(enable),.C(eD6));
problem2_and inst9(.A(enD7),.B(enable),.C(eD7));
always @(*) begin
    if(enable == 1'b0) begin
	D0=eD0;
	D1=eD1;
	D2=eD2;
	D3=eD3;
	D4=eD4;
	D5=eD5;
	D6=eD6;
	D7=eD7;
    end else begin
	D0=eD0;
	D1=eD1;
	D2=eD2;
	D3=eD3;
	D4=eD4;
	D5=eD5;
	D6=eD6;
	D7=eD7;

    end
end


endmodule


module nandgate(
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = ~(A & B);
endmodule
module deneme (
    input enable, A1, A0,
    output reg D0, D1, D2, D3
);

logic notD0, notD1, notD2, notD3;
logic enD0,enD1,enD2,enD3;

nandgate inst0 (.A(~A1), .B(~A0), .Y(notD0));
nandgate inst1 (.A(~A1), .B(A0), .Y(notD1));
nandgate inst2 (.A(A1), .B(~A0), .Y(notD2));
nandgate inst3 (.A(A1), .B(A0), .Y(notD3));
problem2_and inst4(.A(notD0),.B(enable),.C(enD0));
problem2_and inst5(.A(notD1),.B(enable),.C(enD1));
problem2_and inst6(.A(notD2),.B(enable),.C(enD2));
problem2_and inst7(.A(notD3),.B(enable),.C(enD3));

always @(*) begin
    if(enable == 1'b0) begin
        D0 = enD0;
        D1 = enD1;
        D2 = enD2;
        D3 = enD3;
 	
    end else begin
        D0 = ~enD0;
        D1 = ~enD1;
        D2 = ~enD2;
        D3 = ~enD3;
    end
end



endmodule
