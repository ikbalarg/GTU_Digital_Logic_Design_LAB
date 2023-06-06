module tb_p4();
  logic clk, reset, en;
  logic [4:0] D;
  logic baslat, Y, mesgul;
  
  p4 uut0(clk, reset, en, D, baslat, Y, mesgul);
  
  always begin
    clk = 1;
    #5;
    clk = 0;
    #5;
  end
  
  initial begin
    en = 1;
    reset = 0;
    D = 5'b01101;
    baslat = 0;
    #15;
    baslat = 1;
    #10;
    baslat = 0;
    #100;
    $stop; // Stop the simulation and hold. Use $finish to terminate.
  end
endmodule

