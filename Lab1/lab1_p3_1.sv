// X icin
module lab1_p3_1(
	input logic G,T,U,E,
	output logic X,Y);

assign X= (G&T&U&~E)|(~G&T&U&~E)|(G&~T&U&~E)|(~G&~T&U&~E)|(G&~T&~U&~E)|(~G&~T&~U&~E);
assign Y= (~G&T&U&E)|(~G&~T&U&E)|(G&T&~U&E)|(~G&T&~U&E)|(G&~T&~U&E)|(~G&~T&~U&E)|(~G&T&U&~E)|(~G&~T&U&~E)|(G&T&~U&~E)|(~G&T&~U&~E)|(G&~T&~U&~E)|(~G&~T&~U&~E);

endmodule

