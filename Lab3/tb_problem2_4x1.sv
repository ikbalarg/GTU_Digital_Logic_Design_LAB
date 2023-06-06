module tb_problem2_4x1();
  logic I0, I1, I2, I3, S0, S1, Out;
  problem2_4x1 dut0(I0, I1, I2, I3, S0, S1, Out);
  initial begin
    for (int i = 0; i < 2; i++)begin
        for (int j = 0; j < 2; j++)begin
            for (int k = 0; k < 2; k++)begin
                for (int l = 0; l < 2; l++)begin
                    for (int m = 0; m < 2; m++)begin
                        for (int n = 0; n < 2; n++)begin
                            S0 = i;
                            S1 = j;
                            I0 = k;
                            I1 = l;
                            I2 = m;
                            I3 = n;
                            #10;
                        end
                    end
                end
            end
        end
    end
    $stop;
  end
endmodule

