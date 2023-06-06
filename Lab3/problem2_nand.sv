module problem2_nand (
    input logic A,
    input logic B,
    output logic C
);	

    problem1 inst (.s(A), .x0(1'b1), .x1(~B), .o(C));

endmodule 
