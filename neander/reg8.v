module reg8 (
input	[7:0] ed,
input	ck,
input	eset,
input	ereset,
input   eena,
output  [7:0] sq);


    DFFRSE ff_0	(	.q(sq[0]), 
					.d(ed[0]), 
					.clk(ck), 
					.reset(ereset), 
					.set(eset), 
					.enable(eena));
    
    DFFRSE ff_1	(	.q(sq[1]), 
					.d(ed[1]), 
					.clk(ck), 
					.reset(ereset), 
					.set(eset), 
					.enable(eena));
					
    DFFRSE ff_2	(	.q(sq[2]), 
					.d(ed[2]), 
					.clk(ck), 
					.reset(ereset), 
					.set(eset), 
					.enable(eena));
					
	DFFRSE ff_3	(	.q(sq[3]), 
					.d(ed[3]), 
					.clk(ck), 
					.reset(ereset), 
					.set(eset), 
					.enable(eena));
    
    DFFRSE ff_4	(	.q(sq[4]), 
					.d(ed[4]), 
					.clk(ck), 
					.reset(ereset), 
					.set(eset), 
					.enable(eena));
					
    DFFRSE ff_5	(	.q(sq[5]), 
					.d(ed[5]), 
					.clk(ck), 
					.reset(ereset), 
					.set(eset), 
					.enable(eena));
					
    DFFRSE ff_6	(	.q(sq[6]), 
					.d(ed[6]), 
					.clk(ck), 
					.reset(ereset), 
					.set(eset), 
					.enable(eena));
					
    DFFRSE ff_7	(	.q(sq[7]), 
					.d(ed[7]), 
					.clk(ck), 
					.reset(ereset), 
					.set(eset), 
					.enable(eena));
					
endmodule