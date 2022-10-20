module temporizador(
input	gotoT0,
input	ck,
output  [2:0]t);
	
	wire ngotoT0, LOW, HIGH;
	not(ngotoT0, gotoT0);
	and(LOW, ngotoT0, gotoT0);
	not(HIGH, LOW);
	
	wire auxOr;
	wire [1:0]auxAnd;
	wire [2:0]auxT;

	or(auxOr, gotoT0, auxT[2];
    DFFRSE ff_0	(	.q(auxOr), 
					.d(auxT[0]), 
					.clk(ck), 
					.reset(LOW), 
					.set(LOW), 
					.enable(HIGH));
    
	and(auxAnd[0], ngotoT0, auxT[0]);
    DFFRSE ff_1	(	.q(auxAnd[0]), 
					.d(auxT[1]), 
					.clk(ck), 
					.reset(LOW), 
					.set(LOW), 
					.enable(HIGH));
	
	and(auxAnd[1], ngotoT0, auxT[1]);
    DFFRSE ff_2	(	.q(auxAnd[1]), 
					.d(auxT[2]), 
					.clk(ck), 
					.reset(LOW), 
					.set(LOW), 
					.enable(HIGH));
					
endmodule