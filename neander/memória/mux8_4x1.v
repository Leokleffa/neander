module mux8_4x1(
input [7:0]em0,
input [7:0]em1,
input [7:0]em2,
input [7:0]em3,
input [1:0]esel4,
output [7:0]out4
);

	mux4x1 mux0(.mea0(em0[0]), .mea1(em1[0]), .mea2(em2[0]), .mea3(em3[0]), .mse0(esel4[0]), .mse1(esel4[1]), .ms(out4[0]));
	mux4x1 mux1(.mea0(em0[1]), .mea1(em1[1]), .mea2(em2[1]), .mea3(em3[1]), .mse0(esel4[0]), .mse1(esel4[1]), .ms(out4[1]));
	mux4x1 mux2(.mea0(em0[2]), .mea1(em1[2]), .mea2(em2[2]), .mea3(em3[2]), .mse0(esel4[0]), .mse1(esel4[1]), .ms(out4[2]));
	mux4x1 mux3(.mea0(em0[3]), .mea1(em1[3]), .mea2(em2[3]), .mea3(em3[3]), .mse0(esel4[0]), .mse1(esel4[1]), .ms(out4[3]));
	mux4x1 mux4(.mea0(em0[4]), .mea1(em1[4]), .mea2(em2[4]), .mea3(em3[4]), .mse0(esel4[0]), .mse1(esel4[1]), .ms(out4[4]));
	mux4x1 mux5(.mea0(em0[5]), .mea1(em1[5]), .mea2(em2[5]), .mea3(em3[5]), .mse0(esel4[0]), .mse1(esel4[1]), .ms(out4[5]));
	mux4x1 mux6(.mea0(em0[6]), .mea1(em1[6]), .mea2(em2[6]), .mea3(em3[6]), .mse0(esel4[0]), .mse1(esel4[1]), .ms(out4[6]));
	mux4x1 mux7(.mea0(em0[7]), .mea1(em1[7]), .mea2(em2[7]), .mea3(em3[7]), .mse0(esel4[0]), .mse1(esel4[1]), .ms(out4[7]));
		
endmodule