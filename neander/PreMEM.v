module PreMEM(input [7:0]endM, input [1:0]selPC, input clock, input selMEM, output [7:0]EndMem);
	wire LOW, HIGH, nselMEM;
	not(nselMEM, selMEM);
	and(LOW, nselMEM, selMEM);
	not(HIGH, LOW);
	
	wire [7:0]outINC;
	wire [7:0]inPC;
	wire [7:0]outPC;
	wire [7:0]auxREM;
	
	INC incrementador(.operando(outPC), .inc(outINC));
	mux8_4x1 muxMem( .em0(endM), .em1(outINC), .em2(LOW), .em3(outPC), .esel4(selPC), .out4(inPC));
	reg8 PC (.ed(inPC), .ck(clock), .eset(LOW), .ereset(LOW), .eena(HIGH), .sq(outPC));
	
	reg8 REM(.ed(endM), .ck(clock), .eset(LOW), .ereset(LOW), .eena(HIGH), .sq(sout));
	
	mux8_2x1 muxMem( .em0(), .em1(), .esel2(), .out2(EndMem));
	
endmodule