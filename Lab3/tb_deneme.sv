module tb_deneme();
    logic enable,A1, A0, D0, D1, D2, D3;
    deneme dut0(enable,A1, A0, D0, D1, D2, D3);
    
    initial begin
        enable=1'b0;A1 = 1'b0; A0 = 1'b0; #10ns;
        enable=1'b0;A1 = 1'b0; A0 = 1'b1; #10ns;
        enable=1'b0;A1 = 1'b1; A0 = 1'b0; #10ns;
        enable=1'b0;A1 = 1'b1; A0 = 1'b1; #10ns;
	enable=1'b1;A1 = 1'b0; A0 = 1'b0; #10ns;
	enable=1'b1;A1 = 1'b0; A0 = 1'b1; #10ns;
	enable=1'b1;A1 = 1'b1; A0 = 1'b0; #10ns;
	enable=1'b1;A1 = 1'b1; A0 = 1'b1; #10ns;
        $stop;
    end
endmodule
