module decoder
(
	input		[1:0]	a,
	input		k,
	output	reg	[3:0]	b
);
always @ (*)
	if(k==0)
	case(a)
		2'b00:b=4'b1110;
		2'b01:b=4'b1101;
		2'b10:b=4'b1011;
		2'b11:b=4'b0111;
		default:b=4'b1111;
	endcase
	else
		b=4'b1111;
endmodule