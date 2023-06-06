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
module problem3_4x16(
input logic enable, A3,A2,A1,A0,
output logic D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15
);
logic enD0,enD1,enD2,enD3,enD4,enD5,enD6,enD7,enD8,enD9,enD10,enD11,enD12,enD13,enD14,enD15;
logic eD0,eD1,eD2,eD3,eD4,eD5,eD6,eD7,eD8,eD9,eD10,eD11,eD12,eD13,eD14,eD15;
problem3_3x8 inst0(.enable(~A3),.A2(A2), .A1(A1), .A0(A0), .D0(enD0), .D1(enD1), .D2(enD2), .D3(enD3),.D4(enD4), .D5(enD5), .D6(enD6), .D7(enD7));
problem3_3x8 inst1(.enable(A3),.A2(A2), .A1(A1), .A0(A0), .D0(enD8), .D1(enD9), .D2(enD10), .D3(enD11),.D4(enD12), .D5(enD13), .D6(enD14), .D7(enD15));
problem2_and inst2(.A(enD0),.B(enable),.C(eD0));
problem2_and inst3(.A(enD1),.B(enable),.C(eD1));
problem2_and inst4(.A(enD2),.B(enable),.C(eD2));
problem2_and inst5(.A(enD3),.B(enable),.C(eD3));
problem2_and inst6(.A(enD4),.B(enable),.C(eD4));
problem2_and inst7(.A(enD5),.B(enable),.C(eD5));
problem2_and inst8(.A(enD6),.B(enable),.C(eD6));
problem2_and inst9(.A(enD7),.B(enable),.C(eD7));
problem2_and inst10(.A(enD8),.B(enable),.C(eD8));
problem2_and inst11(.A(enD9),.B(enable),.C(eD9));
problem2_and inst12(.A(enD10),.B(enable),.C(eD10));
problem2_and inst13(.A(enD11),.B(enable),.C(eD11));
problem2_and inst14(.A(enD12),.B(enable),.C(eD12));
problem2_and inst15(.A(enD13),.B(enable),.C(eD13));
problem2_and inst16(.A(enD14),.B(enable),.C(eD14));
problem2_and inst17(.A(enD15),.B(enable),.C(eD15));
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
	D8=eD8;
	D9=eD9;
	D10=eD10;
	D11=eD11;
	D12=eD12;
	D13=eD13;
	D14=eD14;
	D15=eD15;
    
    end else begin
	D0=eD0;
	D1=eD1;
	D2=eD2;
	D3=eD3;
	D4=eD4;
	D5=eD5;
	D6=eD6;
	D7=eD7;
	D8=eD8;
	D9=eD9;
	D10=eD10;
	D11=eD11;
	D12=eD12;
	D13=eD13;
	D14=eD14;
	D15=eD15;

    end
end

endmodule
module problem2_and (
    input logic A,
    input logic B,
    output logic C
);	

    problem1 inst (.s(A), .x0(1'b0), .x1(B), .o(C));

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