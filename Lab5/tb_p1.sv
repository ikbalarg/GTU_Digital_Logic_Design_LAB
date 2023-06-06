module tb_p1();
  logic clk, reset, en;
  logic [4:0] psc, tick;

  p1 dut0(clk, reset, en, psc, tick);

  always begin
    clk = 1;
    #5;
    clk = 0;
    #5;
  end

  initial begin
    en = 1;
    reset = 1;
    psc = 5'b01000;
    #300;
    $stop; // Stop the simulation and hold. Use $finish to terminate.
  end
endmodule


