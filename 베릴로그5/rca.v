`timescale 1ns / 1ps

module fulladder_32bit(A, B, Cin, S, Cout);

input [31:0] A;
input [31:0] B;
input Cin;
output [31:0] S;
output Cout;
wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30;

full_adder a1(A[0], B[0], Cin, S[0], w0);
full_adder a2(A[1], B[1], w0, S[1], w1);
full_adder a3(A[2], B[2], w1, S[2], w2);
full_adder a4(A[3], B[3], w2, S[3], w3);
full_adder a5(A[4], B[4], w3, S[4], w4);
full_adder a6(A[5], B[5], w4, S[5], w5);
full_adder a7(A[6], B[6], w5, S[6], w6);
full_adder a8(A[7], B[7], w6, S[7], w7);
full_adder a9(A[8], B[8], w7, S[8], w8);
full_adder a10(A[9], B[9], w8, S[9], w9);
full_adder a11(A[10], B[10], w9, S[10], w10);
full_adder a12(A[11], B[11], w10, S[11], w11);
full_adder a13(A[12], B[12], w11, S[12], w12);
full_adder a14(A[13], B[13], w12, S[13], w13);
full_adder a15(A[14], B[14], w13, S[14], w14);
full_adder a16(A[15], B[15], w14, S[15], w15);
full_adder a17(A[16], B[16], w15, S[16], w16);
full_adder a18(A[17], B[17], w16, S[17], w17);
full_adder a19(A[18], B[18], w17, S[18], w18);
full_adder a20(A[19], B[19], w18, S[19], w19);
full_adder a21(A[20], B[20], w19, S[20], w20);
full_adder a22(A[21], B[21], w20, S[21], w21);
full_adder a23(A[22], B[22], w21, S[22], w22);
full_adder a24(A[23], B[23], w22, S[23], w23);
full_adder a25(A[24], B[24], w23, S[24], w24);
full_adder a26(A[25], B[25], w24, S[25], w25);
full_adder a27(A[26], B[26], w25, S[26], w26);
full_adder a28(A[27], B[27], w26, S[27], w27);
full_adder a29(A[28], B[28], w27, S[28], w28);
full_adder a30(A[29], B[29], w28, S[29], w29);
full_adder a31(A[30], B[30], w29, S[30], w30);
full_adder a32(A[31], B[31], w30, S[31], Cout);

endmodule


module full_adder(A, B, Cin, S, Cout); 
	input A, B, Cin; 
	output reg S, Cout; 

	always @(A or B or Cin) 
		begin 
			S = A ^ B ^ Cin; 
			Cout = A&B | (A^B) & Cin; 
		end 
endmodule
