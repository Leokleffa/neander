module decod4x16(input [3:0]e, output [15:0]s);
	wire [3:0]ne;
	not(ne[0],e[0]);
	not(ne[1],e[1]);
	not(ne[2],e[2]);
	not(ne[3],e[3]);
	
	and(s[0],	ne[3], 	ne[2], 	ne[1], 	ne[0]);
	and(s[1], 	ne[3], 	ne[2], 	ne[1], 	e[0]);
	and(s[2], 	ne[3], 	ne[2], 	e[1], 	ne[0]);
	and(s[3], 	ne[3], 	ne[2], 	e[1], 	e[0]);
	and(s[4], 	ne[3], 	e[2], 	ne[1], 	ne[0]);
	and(s[5], 	ne[3],	e[2], 	ne[1], 	e[0]);
	and(s[6], 	ne[3], 	e[2], 	e[1], 	ne[0]);
	and(s[7], 	ne[3], 	e[2], 	e[1], 	e[0]);
	and(s[8], 	e[3], 	ne[2], 	ne[1], 	ne[0]);
	and(s[9], 	e[3],	ne[2], 	ne[1], 	e[0]);
	and(s[10],	e[3], 	ne[2], 	e[1], 	ne[0]);
	and(s[11],	e[3], 	ne[2], 	e[1], 	e[0]);
	and(s[12],	e[3], 	e[2], 	ne[1], 	ne[0]);
	and(s[13],	e[3], 	e[2], 	ne[1], 	e[0]);
	and(s[14],	e[3], 	e[2], 	e[1], 	ne[0]);
	and(s[15],	e[3], 	e[2], 	e[1], 	e[0]);
	
endmodule 