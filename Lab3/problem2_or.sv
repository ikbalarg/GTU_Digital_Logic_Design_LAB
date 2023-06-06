module problem2_or (
    input logic A,
    input logic B,
    output logic C
);	

    problem1 inst (.s(A), .x0(B), .x1(1'b1), .o(C));

endmodule 
