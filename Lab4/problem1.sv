module problem1(
	input D,clock,
	output reg latchQ,PQ,NQ 
);
always_latch 
	if (clock) latchQ<=D;

always_ff @(negedge clock) begin
	NQ=D;
end
always_ff @(posedge clock) begin
	PQ=D;
end
endmodule

