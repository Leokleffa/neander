module Segmentos7
 (input sb3,
  input sb2,
  input	sb1,
  input	sb0,
  
  output	sa,
  output	sb,
  output	sc,
  output	sd,
  output	se,
  output	sf,
  output	sg);

	wire nsb3, nsb2, nsb1, nsb0;
	not(nsb3, sb3);
    not(nsb2, sb2);
    not(nsb1, sb1);
    not(nsb0, sb0);
	
//Segment A
	wire auxA0, auxA1, auxA2, auxA3;	
	and(auxA0, sb3, nsb2, sb1, sb0);
	and(auxA1, nsb3, nsb2, nsb1, sb0);
	and(auxA2, nsb3, sb2, nsb1, nsb0);
	and(auxA3, sb3, sb2, nsb1, sb0);
	nor(sa, auxA0, auxA1, auxA2, auxA3);
//Segment B
	wire auxB0, auxB1, auxB2, auxB3;
	and(auxB0, sb3, sb1, sb0);
	and(auxB1, nsb3, sb2, nsb1, sb0);
	and(auxB2, sb2, sb1, nsb0);
	and(auxB3, sb3, sb2, nsb0);
	nor(sb, auxB0, auxB1, auxB2, auxB3);
//Segment C
	wire auxC0, auxC1, auxC2;
	and(auxC0, sb3, sb2, sb1);
	and(auxC1, nsb3, nsb2, sb1, nsb0);
	and(auxC2, sb3, sb2, nsb0);
	nor(sc, auxC0, auxC1, auxC2);
//Segment D
	wire auxD0, auxD1, auxD2, auxD3;
	and(auxD0, sb2, sb1, sb0);
	and(auxD1, nsb3, nsb2, nsb1, sb0);
	and(auxD2, nsb3, sb2, nsb1, nsb0);
	and(auxD3, sb3, nsb2, sb1, nsb0);
	nor(sd, auxD0, auxD1, auxD2, auxD3);
//Segment E
	wire auxE0, auxE1, auxE2;
	and(auxE0, nsb2, nsb1, sb0);
	and(auxE1, nsb3, sb2, nsb1);
	and(auxE2, nsb3, sb0);
	nor(se, auxE0, auxE1, auxE2);	
//Segment F
	wire auxF0, auxF1, auxF2, auxF3;
	and(auxF0, nsb3, nsb2, sb0);
	and(auxF1, nsb3, nsb2, sb1);
	and(auxF2, nsb3, sb1, sb0);
	and(auxF3, sb3, sb2, nsb1, sb0);
	nor(sf, auxF0, auxF1, auxF2, auxF3);
//Segment G
	wire auxG0, auxG1, auxG2;
	and(auxG0, nsb3, sb2, sb1, sb0);
	and(auxG1, sb3, sb2, nsb1, nsb0);
	and(auxG2, nsb3, nsb2, nsb1);
	nor(sg, auxG0, auxG1, auxG2);
endmodule