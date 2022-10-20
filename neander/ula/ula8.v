module ula8(input [7:0]ea, input [7:0]eb, input [1:0]es, output scout, output szero, output snegative, output [7:0]f);
	wire [6:0]acout;
	wire auxzero0, auxzero1, ZERO, nszero;
	
	and(auxzero0, ea[0],ea[1],ea[2],ea[3]);
	and(auxzero1, ea[4], ea[5], ea[6], ea[7]);
	and(szero, auxzero0, auxzero1); 
	
	not(nszero, szero);
	and(ZERO, nszero, szero);
	
	buf(snegative, ea[7]);
	
	bitSlice bitSlice0(.ai(ea[0]), .bi(eb[0]), .bcin(ZERO)	, 	.bse(es), .bcout(acout[0]), .fi(f[0]));
	bitSlice bitSlice1(.ai(ea[1]), .bi(eb[1]), .bcin(acout[0]), .bse(es), .bcout(acout[1]), .fi(f[1]));
	bitSlice bitSlice2(.ai(ea[2]), .bi(eb[2]), .bcin(acout[1]), .bse(es), .bcout(acout[2]), .fi(f[2])); 
	bitSlice bitSlice3(.ai(ea[3]), .bi(eb[3]), .bcin(acout[2]), .bse(es), .bcout(acout[3]), .fi(f[3])); 
	bitSlice bitSlice4(.ai(ea[4]), .bi(eb[4]), .bcin(acout[3]),	.bse(es), .bcout(acout[4]), .fi(f[4]));
	bitSlice bitSlice5(.ai(ea[5]), .bi(eb[5]), .bcin(acout[4]), .bse(es), .bcout(acout[5]), .fi(f[5]));
	bitSlice bitSlice6(.ai(ea[6]), .bi(eb[6]), .bcin(acout[5]), .bse(es), .bcout(acout[6]), .fi(f[6])); 
	bitSlice bitSlice7(.ai(ea[7]), .bi(eb[7]), .bcin(acout[6]), .bse(es), .bcout(scout)   , .fi(f[7])); 

endmodule	