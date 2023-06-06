module tb_problem2_nor();
  logic A, B;
  logic C;
  problem2_nor dut0(A, B, C);
  
  initial begin
    A = 1'b0;B = 1'b0; #10
    A = 1'b0;B = 1'b1;  #10
    A =1'b1;B =1'b0;  #10
    B=1'b1; #10;
    $stop;
  end
endmodule
