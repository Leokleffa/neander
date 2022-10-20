module Controle(input [15:0]codigo, input Szero, input Snegative, input clock, output cgREM, output INCPC, output cgRI, output sel, output cgRDM, output READ, output WRITE
, output fLDA, output fADD, output fOR, output fAND, output cgAC, output cgNZ, output cgPC, output GOtoT0);
	wire LOW, HIGH, nszero;
	not(nszero, szero);
	and(LOW, nszero, szero);
	not(HIGH, LOW);
	
	wire [7:0]DAC;
	reg8 Acumulador(.ed(DAC), .ck(clock), .eset(LOW), .ereset(LOW), .eena(HIGH), .sq(sout));
	ula8 ula(.eX(DAC), .eY(Y), .es(Usel), .scout(scout), .cargaZ(szero), .cargaN(snegative), .f(DAC)); 
	
	buf(AC[0],DAC[0]);
	buf(AC[1],DAC[1]);
	buf(AC[2],DAC[2]);
	buf(AC[3],DAC[3]);
	buf(AC[4],DAC[4]);
	buf(AC[5],DAC[5]);
	buf(AC[6],DAC[6]);
	buf(AC[7],DAC[7]);
	
endmodule