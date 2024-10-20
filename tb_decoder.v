`timescale 1ns/1ns
module tb_decoder();

reg [1:0]	a;
reg k;
wire	[3:0]	b;

initial begin
	a <= 2'b0;
end

always #10 a[0] <= {$random} % 2;
always #10 a[1] <= {$random} % 2;
always #100 k <= {$random} % 2;

initial begin 
	$timeformat(-9, 0, "ns", 6);
	$monitor("@time %t: a=%b k=%b b=%b",$time,a,k,b);
end

decoder decoder_inst
(
	.a(a),
	.k(k),
	.b(b)
);

endmodule