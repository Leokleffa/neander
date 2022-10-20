module and8(input [7:0]A, input	[7:0]B, output	[7:0]S);
	and(S[0], A[0], B[0]);
	and(S[1], A[1], B[1]);
	and(S[2], A[2], B[2]);
	and(S[3], A[3], B[3]);
	and(S[4], A[4], B[4]);
	and(S[5], A[5], B[5]);
	and(S[6], A[6], B[6]);
	and(S[7], A[7], B[7]);
endmodule