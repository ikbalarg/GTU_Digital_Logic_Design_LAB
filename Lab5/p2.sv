module p2(
  input logic clk,
  input logic reset,
  input logic en,
  input logic [4:0] psc,
  input reg [15:0] reload,
  output reg [15:0] cnt,
  output reg bitti,
  output reg tick
);
  logic [15:0]count=reload;
  p1 dut0(clk, reset, en, psc, tick);
  always_ff @(posedge clk) begin
    if (reset == 0) begin
      count <= 0;
      bitti <= 0;
    end 
    else if (en) begin
      if (tick && cnt == 0) begin
        count <= reload;
        bitti <= 1;
      end
      else begin
        count <= tick ? count - 1 : count;
        bitti <= 0;
      end
    end
    else if(!en&&reload!=0) begin
         count <= reload;
    end
  end
 assign cnt=count;
  assign tick = dut0.tick; // Connect the tick signal from p1 to p2
endmodule
