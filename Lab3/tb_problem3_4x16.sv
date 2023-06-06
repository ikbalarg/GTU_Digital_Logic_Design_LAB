module tb_problem3_4x16();
    logic enable,A3,A2,A1, A0, D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;
    problem3_4x16 dut0(enable,A3,A2,A1, A0, D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15);
    
    initial begin
	enable=1'b0;A3=1'b0;A2=1'b0;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b0;A3=1'b0;A2=1'b0;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b0;A3=1'b0;A2=1'b0;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b0;A3=1'b0;A2=1'b0;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b0;A3=1'b0;A2=1'b1;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b0;A3=1'b0;A2=1'b1;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b0;A3=1'b0;A2=1'b1;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b0;A3=1'b0;A2=1'b1;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b0;A3=1'b1;A2=1'b0;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b0;A3=1'b1;A2=1'b0;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b0;A3=1'b1;A2=1'b0;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b0;A3=1'b1;A2=1'b0;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b0;A3=1'b1;A2=1'b1;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b0;A3=1'b1;A2=1'b1;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b0;A3=1'b1;A2=1'b1;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b0;A3=1'b1;A2=1'b1;A1 = 1'b1; A0 = 1'b1; #10ns;//15
	enable=1'b1;A3=1'b0;A2=1'b0;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b1;A3=1'b0;A2=1'b0;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b1;A3=1'b0;A2=1'b0;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b1;A3=1'b0;A2=1'b0;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b1;A3=1'b0;A2=1'b1;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b1;A3=1'b0;A2=1'b1;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b1;A3=1'b0;A2=1'b1;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b1;A3=1'b0;A2=1'b1;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b1;A3=1'b1;A2=1'b0;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b1;A3=1'b1;A2=1'b0;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b1;A3=1'b1;A2=1'b0;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b1;A3=1'b1;A2=1'b0;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b1;A3=1'b1;A2=1'b1;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b1;A3=1'b1;A2=1'b1;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b1;A3=1'b1;A2=1'b1;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b1;A3=1'b1;A2=1'b1;A1 = 1'b1; A0 = 1'b1; #10ns;
       
        $stop;
    end
endmodule
