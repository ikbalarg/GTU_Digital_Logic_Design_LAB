module p4 (
  input  logic       clk, reset, en,
  input  logic [4:0] D,
  input  logic baslat,
  output logic Y,
  output logic mesgul
);
  typedef enum logic [3:0] {
    S0, S1, S2, S3, S4, S5, S6, S7
  } state_t;
  
  state_t current_state, next_state;
  logic prev_baslat;
  
  always_ff @(posedge clk or posedge reset) begin
    if (en) begin
      if (reset) begin
        current_state <= S0;
      end else begin
        current_state <= next_state;
      end
    end
  end
  
  always_comb begin
    // Mevcut durum ve giri?lere ba?l? olarak bir sonraki durumu belirle
    prev_baslat <= baslat; // baslat'?n önceki de?erini sakla
    case (current_state)
      S0: next_state = (!baslat && prev_baslat) ? S1 : S0;
      S1: next_state = (baslat) ? S1 : S2;
      S2: next_state = (baslat)? S1 : S3;
      S3: next_state = (baslat)? S1 : S4;
      S4: next_state =  (baslat)? S1 : S5;
      S5: next_state =  (baslat)? S1 : S6;
      S6: next_state =(baslat)  ?S1 : S7;
      S7: next_state = (baslat) ?S1 : S0;
      default: next_state = S0;
    endcase

    // Mevcut duruma ba?l? olarak Y ve mesgul ç?k??lar?n? ayarla
    case (current_state)
      S0: begin
        Y = 1;
        mesgul = 0;
      end
      S1: begin
        Y = 0;
        mesgul = 1;
      end
      S2: begin
        Y = D[0];
        mesgul = 1;
      end
      S3: begin
        Y = D[1];
        mesgul = 1;
      end
      S4: begin
        Y = D[2];
        mesgul = 1;
      end
      S5: begin
        Y = D[3];
        mesgul = 1;
      end
      S6: begin
        Y = D[4];
        mesgul = 1;
      end
      S7: begin
        Y = 1;
        mesgul = 1;
      end
    endcase
  end
endmodule

