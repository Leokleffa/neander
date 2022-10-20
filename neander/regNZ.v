module regNZ (
input	n,
input	z,
input	ck,
input 	Reset,
input   cargaNZ,
output  sN,
output  sZ);

	wire LOW, nReset;
	not(nReset, Reset);
	and(LOW, nReset, Reset);


    DFFRSE ffN	(	.q(n), 
					.d(sN), 
					.clk(ck), 
					.reset(Reset), 
					.set(LOW), 
					.enable(cargaNZ));
    
    DFFRSE ffZ	(	.q(z), 
					.d(sZ), 
					.clk(ck), 
					.reset(Reset), 
					.set(LOW), 
					.enable(cargaNZ));

endmodule