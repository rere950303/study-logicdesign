module counter (clk, rst, Q);
	input clk, rst;
	output[0:2] Q;
	reg[0:2] Q;
	
	always @(posedge clk or posedge rst) begin
	if(rst) Q <= 3'b000;
	else Q <= Q + 1;
	end
endmodule
