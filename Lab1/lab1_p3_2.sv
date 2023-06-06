// Y icin
module lab1_p3_2(
	input logic G,T,U,E,
	output logic Y);

assign Y= (~G&T&U&E)|(~G&~T&U&E)|(G&T&~U&E)|(~G&T&~U&E)|(G&~T&~U&E)|(~G&~T&~U&E)|(~G&T&U&~E)|(~G&~T&U&~E)|(G&T&~U&~E)|(~G&T&~U&~E)|(G&~T&~U&~E)|(~G&~T&~U&~E);
endmodule


