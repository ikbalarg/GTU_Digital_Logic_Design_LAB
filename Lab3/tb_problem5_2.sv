module tb_problem5_2();
    logic A,B,C,D,F1,F2;
    problem5_2 dut0(A,B,C,D,F1,F2);
    
    initial begin
	A=1'b0;B=1'b0;C = 1'b0; D = 1'b0; #10ns;
	A=1'b0;B=1'b0;C = 1'b0; D = 1'b1; #10ns;
	A=1'b0;B=1'b0;C = 1'b1; D = 1'b0; #10ns;
	A=1'b0;B=1'b0;C = 1'b1; D = 1'b1; #10ns;
	A=1'b0;B=1'b1;C = 1'b0; D = 1'b0; #10ns;
	A=1'b0;B=1'b1;C = 1'b0; D = 1'b1; #10ns;
	A=1'b0;B=1'b1;C = 1'b1; D = 1'b0; #10ns;
	A=1'b0;B=1'b1;C = 1'b1; D = 1'b1; #10ns;
	A=1'b1;B=1'b0;C = 1'b0; D = 1'b0; #10ns;
	A=1'b1;B=1'b0;C = 1'b0; D = 1'b1; #10ns;
	A=1'b1;B=1'b0;C = 1'b1; D = 1'b0; #10ns;
	A=1'b1;B=1'b0;C = 1'b1; D = 1'b1; #10ns;
	A=1'b1;B=1'b1;C = 1'b0; D = 1'b0; #10ns;
	A=1'b1;B=1'b1;C = 1'b0; D = 1'b1; #10ns;
	A=1'b1;B=1'b1;C = 1'b1; D = 1'b0; #10ns;
	A=1'b1;B=1'b1;C = 1'b1; D = 1'b1; #10ns;
       
        $stop;
    end
endmodule
