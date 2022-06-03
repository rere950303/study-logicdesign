`timescale 1ns/1ps

module test;
reg [31:0] A;
reg [31:0] B;
reg Cin;
wire [31:0] S;
wire Cout;

fulladder_32bit adder (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
	
	initial begin
		A = 32'b00000000000000000000000000000000;
		B = 32'b00000000000000000000000000000000;
		Cin = 0;
		#600 $finish;
	end

	always #10 A = $random();
	always #10 B = $random();
	always #10 Cin = ~Cin;
endmodule