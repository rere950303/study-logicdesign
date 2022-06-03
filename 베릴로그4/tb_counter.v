module tb_counter;
reg clk, rst;
wire[0:2] Q;

counter cnt(clk, rst, Q);

initial begin
clk <= 0;
rst <= 0;
#(5) rst <= 1;
#(5) rst <= 0;
end

always @(clk) begin
#(5) clk <= ~clk;
end
endmodule
