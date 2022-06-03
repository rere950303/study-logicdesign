module FSM(clk, rst, in, out);
	input clk,rst,in;
	output out;
	reg out;
	
	reg [1:0] CurrentState, NextState;
	
	always @(posedge clk or posedge rst) begin
		if(rst) CurrentState <= 2'b00;
		else CurrentState <= NextState;
	end

	always @(CurrentState or in) begin
		case(CurrentState)
			2'b00: begin // IDLE
				out <= 1'b0;
				if(in) NextState <= 2'b01;
				else NextState <= 2'b00;
			end
			2'b01: begin // S0
				out <= 1'b0;
				if(in) NextState <= 2'b10;
				else NextState <= 2'b00;
			end
			2'b10: begin // S1
				out <= 1'b1;
				if(in) NextState <= 2'b10;
				else NextState <= 2'b00;
			end
		endcase
	end
endmodule