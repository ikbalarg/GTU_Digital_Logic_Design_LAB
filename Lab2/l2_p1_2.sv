'timescale 1ns/1ps
module l2_p1_2(
      input logic A,B,C,D,
      output logic Y);
assign #2 n2 = A&C;
assign #2 n1= ~B; 
assign #2 n3= n2&n1; 
assign #2 n4 = ~C; 
assign #2 n5 = n4&D; 
assign #2 n6 = A&D; 
assign #2 n7 = ~B ; 
assign #2 n8 = n6&n7; 
assign #2 n9 = n8|n5; 
assign #2 Y = n3|n9; 
endmodule