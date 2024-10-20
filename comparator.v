module comparator
(
input wire A, B,
output reg LED_bigger,LED_equal,LED_smaller
);

always @(*)
begin

	if(A<B)
	begin
	LED_bigger = 0;
	LED_equal = 1;
	LED_smaller = 1;
	end
	else if(A==B)
	begin
	LED_bigger = 1;
	LED_equal = 0;
	LED_smaller = 1;
	end
	else
	begin
	LED_bigger = 1;
	LED_equal = 1;
	LED_smaller = 0;
	end
end

endmodule