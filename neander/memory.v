module memory(input [1:0]endM, input write, input read, input [7:0]dataIN, input clock, output [7:0]dataOUT);
	wire [3:0] inAnd;
	wire [3:0] outAnd;
	wire [7:0] out0;
	wire [7:0] out1;
	wire [7:0] out2;
	wire [7:0] out3;
	wire [7:0] outMux;
	
	decod2x4(.e(endM), .s(inAnd));
	and(outAnd[0], inAnd[0], write);
	and(outAnd[1], inAnd[1], write);
	and(outAnd[2], inAnd[2], write);
	and(outAnd[3], inAnd[3], write);
	
	reg8 end0(.ed(dataIN), .ck(clock), .eset(LOW), .ereset(LOW), .eena(outAnd[0]), .sq(out0));
	reg8 end1(.ed(dataIN), .ck(clock), .eset(LOW), .ereset(LOW), .eena(outAnd[1]), .sq(out1));
	reg8 end2(.ed(dataIN), .ck(clock), .eset(LOW), .ereset(LOW), .eena(outAnd[2]), .sq(out2));
	reg8 end3(.ed(dataIN), .ck(clock), .eset(LOW), .ereset(LOW), .eena(outAnd[3]), .sq(out3));
	
	mux8_4x1 muxMem( .em0(out0), .em1(out1), .em2(out2), .em3(out3), .esel4(endM), .out4(outMux));
	
	and(dataOUT[], outMux[], read);
	
	
endmodule;