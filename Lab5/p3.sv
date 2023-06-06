module p3(
input logic clk,A,
output logic Y
);
typedef enum logic [3:0] {S0,S1,S2,S3,S4,S5,S6,S7,S8} state_t;
state_t current_state, next_state;
always_ff @(posedge clk) begin
  current_state <= next_state;
end
  always_comb begin
    case (current_state)
      S0: next_state = (A) ? S5 : S1;
      S1: next_state = (A) ? S5 : S2;
      S2: next_state = (A)? S5 : S3;
      S3: next_state = (A)? S5 : S4;
      S4: next_state =  (A)? S5 : S4;
      S5: next_state =  (A)? S6 : S1;
      S6: next_state =  (A)? S7 : S1;
      S7: next_state =(A) ?S8 : S1;
      S8: next_state =  (A)? S8 : S1;
      default: next_state = S0;
    endcase

    // Mevcut duruma ba?l? olarak Y ve mesgul ç?k??lar?n? ayarla
    case (current_state)
      S0: begin
        Y = 0;
      end
      S1: begin
        Y = 0;
      end
      S2: begin
        Y = 0;
      end
      S3: begin
	Y=0;
      end
      S4: begin
        Y = 1;
      end
      S5: begin
        Y = 0;
      end
      S6: begin
        Y = 0;
      end
      S7: begin
        Y = 0;
      end
      S8: begin
        Y = 1;
      end
    endcase
  end
endmodule
