'timescale 1ns/1ps
module l2_p2(
      input logic X3,X2,X1,X0,
      output logic A,B,C,D,E,F,G);
assign A = X3|X1;
assign B= (~X2&X0)|(X3&X0);
assign C= (~X2&X0)|(X2&X1);
assign D= X2|X1;
assign E= (~X3&X1&~X0)|(~X1&X2);
assign F= (~X0&X1)|(~X3&X2)|(~X0&X2);
assign G= (~X2)|(X3&X0)|X1;
endmodule
