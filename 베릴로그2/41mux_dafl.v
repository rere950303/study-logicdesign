`timescale 1ns/1ps
module mux4 (s0, s1, d0, d1, d2, d3, y);
input s0, s1, d0, d1, d2, d3;
output y;

assign y = s0 ? (s1 ? d3 : d2) : (s1 ? d1 : d0);

endmodule