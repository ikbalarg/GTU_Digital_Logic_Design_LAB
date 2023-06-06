module lab1_p2(
	input logic G,T,U,E,
	output logic y);

assign y= (G&~U&E)|(~G&U&E)|(T&G&U)|(T&E);
endmodule
