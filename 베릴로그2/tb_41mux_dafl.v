`timescale 1ns/1ps

module testmux;
reg s0, s1, d0, d1, d2, d3;
wire f;

mux4 myMux (.s0(s0), .s1(s1), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .y(f));
	
	initial begin
		d0=0; d1=0; d2=0; d3=0; s0=0; s1=0; 
		#300 $finish;
	end

	always #3 d0=~d0; 
	always #7 d1=~d1; 
	always #11 d2=~d2;
	always #17 d3=~d3; 
	always #19 s0=~s0; 
	always #23 s1=~s1;
endmodule