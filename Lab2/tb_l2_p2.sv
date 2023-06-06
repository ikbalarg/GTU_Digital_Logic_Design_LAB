'timescale 1ns/1ps
module tb_l2_p2();
logic X3,X2,X1,X0;
logic A,B,C,D,E,F,G;
l2_p2 dut0(X3,X2,X1,X0,A,B,C,D,E,F,G); 
initial begin
    X3=0;X2=0;X1=0;X0=0;#10 //0000
    X0=1;#10
    X0=0;X1=1;#10
    X0=1;#10
    X1=0;X0=0;X2=1;#10
    X0=1;#10
    X0=0;X1=1;#10
    X0=1;#10
    X3=1;X2=0;X1=0;X0=0;#10 
    X0=1;#10
    X0=0;X1=1;#10
    X0=1;#10
    X1=0;X0=0;X2=1;#10
    X0=1;#10
    X0=0;X1=1;#10
    X0=1;#10
    $stop;
end
endmodule