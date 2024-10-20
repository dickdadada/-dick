`timescale 1ns/1ns
module tb_Fulladder();

reg a, b, cin;

wire out, cout;

initial begin
	a <= 1'b0;
	b <= 1'b0;
	cin <= 1'b0;
end

always #10 a <= {$random} % 2;
always #10 b <= {$random} % 2;
always #10 cin <= {$random} % 2;


initial begin 
	$timeformat(-9, 0, "ns", 6);
	$monitor("@time %t:a=%b b=%b cin=%b cout=%b out=%b",$time,a,b,cin,cout,out);
end

 Fulladder Fulladder_inst
(
	.a (a),
	.b (b),
	.cin (cin),

	.out(out),
	.cout(cout)
);
endmodule