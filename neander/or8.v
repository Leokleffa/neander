module or8(input [7:0]A, input	[7:0]B, output	[7:0]S);
	or(S[0], A[0], B[0]);
	or(S[1], A[1], B[1]);
	or(S[2], A[2], B[2]);
	or(S[3], A[3], B[3]);
	or(S[4], A[4], B[4]);
	or(S[5], A[5], B[5]);
	or(S[6], A[6], B[6]);
	or(S[7], A[7], B[7]);
endmodule