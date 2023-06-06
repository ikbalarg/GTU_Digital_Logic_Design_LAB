module tb_problem2_16x1();
  logic S3,S2, S1, S0, I0, I1, I2, I3, I4, I5, I6, I7,I8,I9,I10,I11,I12,I13,I14,I15, Out;
  problem2_16x1 dut0(I0, I1, I2, I3, I4, I5, I6, I7,I8,I9,I10,I11,I12,I13,I14,I15,S0, S1, S2,S3, Out);
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
                          for (int i2 = 0; i2 < 2; i2++) begin
                            for (int j2 = 0; j2 < 2; j2++) begin
                              for (int k2 = 0; k2 < 2; k2++) begin
                                for (int l2 = 0; l2 < 2; l2++) begin
                                  for (int m2 = 0; m2 < 2; m2++) begin
                                    for (int n2 = 0; n2 < 2; n2++) begin
                                      for (int i3 = 0; i3 < 2; i3++) begin
                                        for (int j3 = 0; j3 < 2; j3++) begin
                                          for (int k3 = 0; k3 < 2; k3++) begin
						S3=i;
                          			S2 = j;
                         			 S1 = k;
                         			 S0 = l;
                          			I0 = m;
                          			I1 = n;
                          			I2 = i1;
                          			I3 = j1;
                          			I4 = k1;
                          			I5 = l1;
                          			I6 = m1;
                          			I7 = i2;
                          			I8 = j2;
                          			I9 = k2;
                          			I10 = l2;
                          			I11 = m2;
                          			I12 = n2;
                          			I13 = i3;
                          			I14 = j3;
						I15 = k3;
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

