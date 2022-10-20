module PC(input [7:0]D, input [1:0]selPC, input clock, input INST, output [7:0]Q);
	wire LOW, HIGH, nselMEM;
	not(nselMEM, INST);
	and(LOW, nselMEM, INST);
	not(HIGH, LOW);
	
	wire [7:0]outINC;
	wire [7:0]DPC;
	wire [7:0]QPC;
	wire [7:0]DREM;
	wire [7:0]QREM;
	
	buf(DREM, DMout);
	
	INC incrementador(.operando(QPC), .inc(outINC));
	mux8_4x1 muxPC( .em0(DMout), .em1(outINC), .em2(LOW), .em3(QPC), .esel4(selPC), .out4(DPC));
	
	reg8 PC (.ed(DPC), .ck(clock), .eset(LOW), .ereset(LOW), .eena(HIGH), .sq(QPC));
endmodule