module lab1_circuit(
	input logic G,T,U,E,
	output logic y);

assign y= (~G&T&~U&E)|(G&T&U&E)|(G&~T&~U&E)|(G&T&~U&E)|(~G&T&U&E)|(~G&~T&U&E)|(G&T&U&~E);
endmodule


