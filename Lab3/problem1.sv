
module nandgate(
    input logic A,
    input logic B,
    output logic Y
);
    assign Y = ~(A & B);
endmodule

module problem1(    
    input logic s,
    input logic x1,
    input logic x0,
    output logic o
);
    logic w0,w1;
    nandgate inst0(.A(x0),.B(~s),.Y(w0)); // x0 yerine 1'b0 atand?
    nandgate inst1(.A(x1),.B(s),.Y(w1));
    nandgate inst2(.A(w0),.B(w1),.Y(o));
endmodule