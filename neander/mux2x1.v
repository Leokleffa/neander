module mux2x1(input m0,input m1,input si,output mout);
	wire ns, and0, and1;
	not(ns, si);

	and(and0, m0, ns);
	and(and1, m1, si );
	or(mout, and0, and1);
endmodule