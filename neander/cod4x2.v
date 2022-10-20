module cod4x2(input mea0, input mea1, input mea2, input mea3, output [1:0]Q);
	wire LOW, nNOT;
	not(nNOT, mea0);
	and(LOW, nNOT, mea0);
	
	or(Q[0], mea3, mea1, LOW);
	or(Q[1], mea3, mea2);
	
endmodule 