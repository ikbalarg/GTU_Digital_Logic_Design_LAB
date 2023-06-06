module tb_p3();
logic clk,A,Y;
p3 dut0(clk,A,Y);
 always begin
    clk = 1;
    #5;
    clk = 0;
    #5;
  end
  
  initial begin
    A=0;#10
    A=0;#10
    A=0;#10
    A=0;#10
    A=0;#10
    A=1;#10
    A=1;#10
    A=0;#10
    A=1;#10
    A=1;#10
    A=1;#10
    A=1;#10
    A=0;#10
    $stop; // Stop the simulation and hold. Use $finish to terminate.
  end
endmodule
