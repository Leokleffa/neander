module PosMEM(input [7:0]operando, input [1:0]Usel, input clock, output scout, output szero, output snegative, output [7:0]AC);
	wire LOW, HIGH, nszero;
	not(nszero, szero);
	and(LOW, nszero, szero);
	not(HIGH, LOW);
	
	wire [7:0]out;
	reg8 Acumulador(.ed(out), .ck(clock), .eset(LOW), .ereset(LOW), .eena(HIGH), .sq(sout));
	ula8 ula(.ea(out), .eb(operando), .es(Usel), .scout(scout), .szero(szero), .snegative(snegative), .f(out)); 
	
	buf(AC[0],out[0]);
	buf(AC[1],out[1]);
	buf(AC[2],out[2]);
	buf(AC[3],out[3]);
	buf(AC[4],out[4]);
	buf(AC[5],out[5]);
	buf(AC[6],out[6]);
	buf(AC[7],out[7]);
	
endmodule