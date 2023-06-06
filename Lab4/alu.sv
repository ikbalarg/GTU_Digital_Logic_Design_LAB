module alu(
  input logic [31:0] a, b,
  input logic [3:0] op,
  output reg [31:0] s,
  output logic n, z, v, c,
  output logic hata
);
  logic [32:0] temp ;
  assign temp = {1'b0,a} + {1'b0,b};
  assign c = temp[32];
  assign z = ~(|s); //|s ifadesi bitler arasında or işlemi yapacak. Eğer bir tane bir varsa z 0'a esitlenecek
  assign n = (s[31] == 1 && (op == 4'b0001));//eger opcode cikarma islemi yaptiracaksa ve sonucun msb biti 1 ise negatif
  assign v = ({c,s[31]} == 2'b01);
  always@(*)
	begin 
    case(op)
      4'b0000: begin
        s = a + b;
      end
      4'b1000: begin
        s = a - b;
      end
      4'b0001: begin
        s =  a << b;
      end
      4'b0010: begin
        s = ($signed(a) < $signed(b)) ? 0 : 1;
      end
      4'b0011: begin
        s = (a < b) ? 0 : 1;
      end
      4'b0100: begin
        s = a ^ b;
      end
      4'b0101: begin
        s = a >> b;
      end
      4'b1101: begin
        s = $signed(a) >>> b;
      end
      4'b0110: begin
        s = a | b;
      end
      4'b0111: begin
        s = a & b;
      end
      default: begin
        hata = 1;
      end
    endcase
  end

endmodule