module problem2_and (
    input logic A,
    input logic B,
    output logic C
);	

    problem1 inst (.s(A), .x0(1'b0), .x1(B), .o(C));

endmodule 
