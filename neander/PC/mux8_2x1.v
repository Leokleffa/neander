module mux8_2x1(
input [7:0]em0,
input [7:0]em1,
input esel2,
output [7:0]out2
);

	mux2x1 mux0(.m0(em0[0]), .m1(em1[0]), .si(esel2), .mout(out2[0]));
	mux2x1 mux1(.m0(em0[1]), .m1(em1[1]), .si(esel2), .mout(out2[1]));
	mux2x1 mux2(.m0(em0[2]), .m1(em1[2]), .si(esel2), .mout(out2[2]));
	mux2x1 mux3(.m0(em0[3]), .m1(em1[3]), .si(esel2), .mout(out2[3]));
	mux2x1 mux4(.m0(em0[4]), .m1(em1[4]), .si(esel2), .mout(out2[4]));
	mux2x1 mux5(.m0(em0[5]), .m1(em1[5]), .si(esel2), .mout(out2[5]));
	mux2x1 mux6(.m0(em0[6]), .m1(em1[6]), .si(esel2), .mout(out2[6]));
	mux2x1 mux7(.m0(em0[7]), .m1(em1[7]), .si(esel2), .mout(out2[7]));
endmodule