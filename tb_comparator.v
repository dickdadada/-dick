`timescale 1ns/1ns

module tb_comparator();

reg A, B; 
wire LED_bigger,LED_equal,LED_smaller;

initial begin
A <= 1'b1;
B <= 1'b1;
end

always #10 A <= {$random} % 2;

always #10 B <= {$random} % 2;


comparator comparator_inst
(
.A (A),
.B (B),
.LED_bigger (LED_bigger),
.LED_equal (LED_equal),
.LED_smaller (LED_smaller)
);

endmodule