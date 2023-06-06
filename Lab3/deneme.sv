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

