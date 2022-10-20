module mux4x1(input mea0, input mea1, input mea2, input mea3, input mse0, input mse1, output ms);
	wire [1:0]wmux;
	mux2x1 mux00( .m0(mea0), .m1(mea2), .si(mse1), .mout(wmux[0]));
	mux2x1 mux01( .m0(mea1), .m1(mea3), .si(mse1), .mout(wmux[1]));
	mux2x1 mux10( .m0(wmux[0]), .m1(wmux[1]), .si(mse0), .mout(ms));
endmodule 