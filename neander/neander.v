module neander(
input clock,
input RESET,
output [7:0]outAC,
output outN,
output outZ
);
	wire LOW, nReset;
	not(nReset, RESET);
	and(LOW, nReset, RESET);
	
	decod4x16 decod(input [3:0]e, output [15:0]s);
	
	Controle ctrl(.codigo(), .Szero(outZ), .Snegative(outN), .clock(clock), 
	.cgREM(cargaREM), .INCPC(IncPC), .cgRI(cargaRI), .selREM(selREM),.selRDM(selRDM), .cgRDM(cargRDM), .READ(read), .WRITE(write), 
	.fLDA(), .fADD(), .fOR(), .fAND(), .cgAC(cargaAC), .cgNZ(cargaNZ), .cgPC(cargaPC));
	
	wire cargaREM, cargaPC, cargaAC, cargaNZ, cargaRI, cargRDM;
	wire Z, N, IncPC, selREM, selRDM, read, write, ADD, OR, AND, NOT, LDA;
	wire [7:0]Q_AC_ULA_RDM;
	wire [7:0]D_AC_ULA;
	wire [7:0]Q_RDM_ULA_PC_RI;
	wire [7:0]Q_PC_MUX;
	wire [7:0]REM_MUX;
	wire [7:0]REM_MEM;
	wire [7:0]RDM_MEM;
	wire [7:0]OUT_MEM;
	
	reg8 RI(.ed(Q_RDM_ULA_PC_RI), .ck(clock), .eset(LOW), .ereset(RESET), .eena(cargaRI), .sq());
	
	PC RPC(.DPC(Q_RDM_ULA_PC_RI), .incPC(IncPC), .clock(clock), .cgPC(cargaPC), .QPC(Q_PC_MUX));
	
	mux8_2x1 muxREM(.em0(Q_PC_MUX), .em1(Q_RDM_ULA_PC_RI), .esel2(selREM), .out2(REM_MUX));
	
	reg8 REM(.ed(REM_MUX), .ck(clock), .eset(LOW), .ereset(RESET), .eena(cargaREM), .sq(REM_MEM));
	
	memory MEM(.endM(REM_MEM), .write(write), .read(read), .dataIN(Q_RDM_ULA_PC_RI), .clock(clock), .dataOUT(OUT_MEM));
	
	mux8_2x1 muxRDM( .em0(OUT_MEM), .em1(Q_AC_ULA_RDM), .esel2(selRDM), .out2(RDM_MEM));
	
	reg8 RDM(.ed(RDM_MEM), .ck(clock), .eset(LOW), .ereset(RESET), .eena(cargRDM), .sq(Q_RDM_ULA_PC_RI));
		
	reg8 AC(.ed(D_AC_ULA), .ck(clock), .eset(LOW), .ereset(RESET), .eena(cargaAC), .sq(Q_AC_ULA_RDM));
	
	ula8 ula(.eX(Q_AC_ULA_RDM), .eY(Q_RDM_ULA_PC_RI), .ADD(ADD), .OR(OR), .AND(AND), .NOT(NOT), .LDA(LDA), .S(D_AC_ULA));
	
	regNZ NZ(.n(N), .z(Z), .ck(clock), .Reset(RESET), .cgNZ(cargaNZ), .sN(outN), .sZ(outZ));
	
endmodule