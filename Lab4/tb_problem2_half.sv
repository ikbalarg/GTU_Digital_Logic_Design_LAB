module tb_problem2_half();
	logic A,B,S,C;
	problem2_half dut0(A,B,S,C);
	initial begin
	A=0;B=0; #5
	A=0;B=1; #5
	A=1;B=0; #5
	A=1;B=1; #5
    	$stop;
    end
endmodule