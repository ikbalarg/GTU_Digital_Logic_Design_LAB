/*Test Bench*/
module tb_l2_p1(); 
logic A,B,C,D;
logic Y;
l2_p1 dut0(A,B,C,D,Y);
initial begin
    A=0;B=0;C=0;D=0;#10 //0000
    D=1;#10 //0001
    D=0;C=1;#10 //0010
    D=1;#10 //0011
    C=0;D=0;B=1;#10 //0100
    D=1;#10 //0101
    D=0;C=1;#10 //0110
    D=1;#10 //0111
    A=1;B=0;C=0;D=0;#10 //1000
    D=1;#10 //1001
    D=0;C=1;#10 //1010
    D=1;#10 //1011
    C=0;D=0;B=1;#10     //1100
    D=1;#10 //1101
    D=0;C=1;#10 //1110
    D=1;#10 //1111
    $stop;
end
endmodule