module tb_problem3_3x8();
    logic enable,A2,A1, A0, D0, D1, D2, D3,D4,D5,D6,D7;
    problem3_3x8 dut0(enable,A2,A1, A0, D0, D1, D2, D3,D4,D5,D6,D7);
    
    initial begin
	enable=1'b0;A2=1'b0;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b0;A2=1'b0;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b0;A2=1'b0;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b0;A2=1'b0;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b0;A2=1'b1;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b0;A2=1'b1;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b0;A2=1'b1;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b0;A2=1'b1;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b1;A2=1'b0;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b1;A2=1'b0;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b1;A2=1'b0;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b1;A2=1'b0;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b1;A2=1'b1;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b1;A2=1'b1;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b1;A2=1'b1;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b1;A2=1'b1;A1 = 1'b1; A0 = 1'b1; #10ns;
       
        $stop;
    end
endmodule
