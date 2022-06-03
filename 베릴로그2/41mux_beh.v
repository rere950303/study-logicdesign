`timescale 1ns/1ps

module mux4 (s0, s1, d0, d1, d2, d3, y);
input s0, s1, d0, d1, d2, d3;
output y;
reg y;

	always @(s0 or s1 or d0 or d1 or d2 or d3)
		case (s0 | s1)
			2'b00: y = d0;
			2'b01: y = d1;
			2'b10: y = d2;
			2'b11: y = d3;
		endcase
endmodule