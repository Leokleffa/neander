module INC( input [7:0]operando, output	[7:0]inc);
	wire [6:0]acout;
	wire LOW, HIGH, acout[0];
	not(nacout, acout[0]);
	and(LOW, nacout, acout[0]);
	not(HIGH, LOW);
	
	half_adder adder0(.a(operando[0]), .b(HIGH), .s(inc[0]), .cout(acout[0]));
	full_adder adder1(.a(operando[1]), .b(LOW), .cin(acout[0]), .s(inc[1]), .cout(acout[1]));
	full_adder adder1(.a(operando[2]), .b(LOW), .cin(acout[1]), .s(inc[2]), .cout(acout[2]));
	full_adder adder1(.a(operando[3]), .b(LOW), .cin(acout[2]), .s(inc[3]), .cout(acout[3]));	
	full_adder adder1(.a(operando[4]), .b(LOW), .cin(acout[3]), .s(inc[4]), .cout(acout[4]));
	full_adder adder1(.a(operando[5]), .b(LOW), .cin(acout[4]), .s(inc[5]), .cout(acout[5]));
	full_adder adder1(.a(operando[6]), .b(LOW), .cin(acout[5]), .s(inc[6]), .cout(acout[6]));	
	full_adder adder1(.a(operando[7]), .b(LOW), .cin(acout[6]), .s(inc[7]), .cout());
endmodule