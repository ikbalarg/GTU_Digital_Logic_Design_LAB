module p1(
  input logic clk,
  input logic reset,
  input logic en,
  input logic [4:0] psc,
  output logic tick
);
  logic [4:0] count=0;

  always_ff @(posedge clk) begin
    if (reset == 0) begin
      count <= 0;
      tick <= 0;
    end
    else if (en) begin
      if (count == psc) begin
        count <= 0;
        tick <= 1;
      end
      else begin
        count <= count + 1;
        tick <= 0;
      end
    end
  end

endmodule
