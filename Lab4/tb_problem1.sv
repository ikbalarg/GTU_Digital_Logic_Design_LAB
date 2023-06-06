`timescale 1ns/1ps
module tb_problem1();
	logic D,clock;
	logic latchQ,PQ,NQ;
problem1 uut0(D,clock,latchQ,PQ,NQ);
always begin
clock = 1; #10; clock = 0; #10; //Duty cycle 50% yar?m peryot 10ns
end
initial begin
	D = 0;#10; D = 1; #5; D = 0; #10;
	D = 1;#5; D = 0; #5; D = 1; #5;
	D = 0;#10; D = 1; #5; D = 0; #4;
	D = 1;#4; D = 0; #5; D = 1; #6;
	D = 0; #10;
	$stop; // simülasyonu durdur ve beklet. Bitirmek için
	//$finish; 
    end
endmodule

