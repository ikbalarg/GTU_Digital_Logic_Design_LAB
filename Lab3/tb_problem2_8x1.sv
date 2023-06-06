module tb_problem2_8x1();
  logic S2, S1, S0, I0, I1, I2, I3, I4, I5, I6, I7, Out;
  problem2_8x1 dut0(I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Out);
  initial begin
    for (int i = 0; i < 2; i++) begin
      for (int j = 0; j < 2; j++) begin
        for (int k = 0; k < 2; k++) begin
          for (int l = 0; l < 2; l++) begin
            for (int m = 0; m < 2; m++) begin
              for (int n = 0; n < 2; n++) begin
                for (int i1 = 0; i1 < 2; i1++) begin
                  for (int j1 = 0; j1 < 2; j1++) begin
                    for (int k1 = 0; k1 < 2; k1++) begin
                      for (int l1 = 0; l1 < 2; l1++) begin
                        for (int m1 = 0; m1 < 2; m1++) begin
                          S2 = i;
                          S1 = j;
                          S0 = k;
                          I0 = l;
                          I1 = m;
                          I2 = n;
                          I3 = i1;
                          I4 = j1;
                          I5 = k1;
                          I6 = l1;
                          I7 = m1;
                          #10;
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    $stop;
  end
endmodule

