module tb_problem1();
  logic s;
  logic x0; // 32-bit giri? tan?m?
  logic x1;
  logic o;
  problem1 dut0(.s(s), .x0(x0), .x1(x1), .o(o)); // modül ad? düzeltildi
  
  initial begin
    s = 1'b0; x0 = 1'b0; x1 =1'b0; #10;
    s = 1'b0; x0 = 1'b0; x1 = 1'b1; #10;
    s = 1'b0; x0 = 1'b1; x1 = 1'b0; #10;
    s = 1'b0; x0 = 1'b1; x1 = 1'b1; #10;
    s = 1'b1; x0 = 1'b0; x1 = 1'b0; #10;
    s = 1'b1; x0 = 1'b0; x1 = 1'b1; #10;
    s = 1'b1; x0 = 1'b1; x1 = 1'b0; #10;
    s = 1'b1; x0 = 1'b1; x1 = 1'b1; #10;
    $stop;
  end
endmodule
