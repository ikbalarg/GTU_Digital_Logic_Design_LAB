module tb_problem3();
    logic A1, A0, D0, D1, D2, D3;
    problem3 dut0(A1, A0, D0, D1, D2, D3);
    
    initial begin
        A1 = 1'b0; A0 = 1'b0; #10ns;
        A1 = 1'b0; A0 = 1'b1; #10ns;
        A1 = 1'b1; A0 = 1'b0; #10ns;
        A1 = 1'b1; A0 = 1'b1; #10ns;
        $stop;
    end
endmodule
