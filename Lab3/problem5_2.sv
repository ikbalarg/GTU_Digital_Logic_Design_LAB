module problem5_2(
input logic A,B,C,D,
output logic F1,F2
);
assign F1=(C&D)|(~A&~B&D)|(A&B&~C);
assign F2=(A)|(~B&~C)|(B&C&~D);
endmodule