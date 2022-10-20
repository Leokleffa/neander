module adder8(input	[7:0]a, input	[7:0]b, output	[7:0]S, output co);
	wire [6:0]Aco;
	half_adder Hadder(  .a(a[0]), .b(b[0]), .s(S[0]), .cout(Aco[0]));
	
	full_adder adder1(.a(a[1]), .b(b[1]), .cin(Aco[0]), .s(S[1]), .cout(Aco[1]));
	full_adder adder2(.a(a[2]), .b(b[2]), .cin(Aco[1]), .s(S[2]), .cout(Aco[2]));
	full_adder adder3(.a(a[3]), .b(b[3]), .cin(Aco[2]), .s(S[3]), .cout(Aco[3]));
	full_adder adder4(.a(a[4]), .b(b[4]), .cin(Aco[3]), .s(S[4]), .cout(Aco[4]));
	full_adder adder5(.a(a[5]), .b(b[5]), .cin(Aco[4]), .s(S[5]), .cout(Aco[5]));
	full_adder adder6(.a(a[6]), .b(b[6]), .cin(Aco[5]), .s(S[6]), .cout(Aco[6]));
	full_adder adder7(.a(a[7]), .b(b[7]), .cin(Aco[6]), .s(S[7]), .cout(co));
endmodule