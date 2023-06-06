module tb_p2;
  // Inputs
  logic clk;
  logic reset;
  logic en;
  logic [4:0] psc;
  logic [15:0] reload;
  
  // Outputs
  logic [15:0] cnt;
  logic bitti;
  logic tick;
  
  // Instantiate the p2 module
  p2 dut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .psc(psc),
    .reload(reload),
    .cnt(cnt),
    .bitti(bitti),
    .tick(tick)
  );
  
  // Clock generation
  always forever begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end
  
  // Test stimulus
  initial begin
    //reset =0 ;#10
    // Initialize inputs
    reset=0;#10
    reset = 1;
    en = 1;
    psc = 4;
    reload = 9;
    #575
    en = 1;
    psc = 4;
    reload = 4;
    #500
    $stop;
  end
endmodule
