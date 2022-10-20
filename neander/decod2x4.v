module decod2x4(input [1:0]e, output [3:0]s);
	wire [1:0]ne;
	not(ne[0],e[0]);
	not(ne[1],e[1]);
	
	and(s[0],	ne[1], 	ne[0]);
	and(s[1], 	ne[1], 	e[0]);
	and(s[2], 	e[1], 	ne[0]);
	and(s[3], 	e[1], 	e[0]);
	
endmodule 