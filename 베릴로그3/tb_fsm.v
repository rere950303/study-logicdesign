module tb_FSM;
	reg clk;
	reg rst;
	reg in;
	wire out;

	FSM fsm(clk, rst, in, out);
	
	initial begin
		clk <= 0;
		rst <= 0;
		#(5) rst <= 1;
		#(2) rst <= 0;
	end

	always @(clk) begin
		#(10) clk <= ~clk;
	end

	initial begin
		in <= 0;
		#(5)in <= 1; // 10 - s0
		#(10)in <= 0; // 20 - idle
		#(10)in <= 1; // 30 - s0
		#(10)in <= 1; // 40 - s1
		#(10)in <= 0; // 50 - s1
		#(10)in <= 0; // 60 - idle
		#(10)in <= 1; // 70 - idle
		#(10)in <= 1; // 80 - s0
		#(10)in <= 0; // 90 - idle
		#(10) $stop();
	end
endmodule
