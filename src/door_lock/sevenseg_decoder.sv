module sevenseg_decoder
	(input logic[3:0] X,
	 output logic[6:0] L,
	 output logic dot);
	 
	 logic f1,f2,f3;
	 
	 assign f1 = (X[3] & ~X[2]) & ~X[1];
	 assign f2 = (~X[3] & ~X[2]) & X[1];
	 assign f3 = (~X[3] & X[2]) & ~X[1];
	 
	 assign L[6] = f1 | f2;
	 assign L[5:4] = 2'b11;
	 assign L[3] = f3 | f2;
	 assign L[2] = f1;
	 assign L[1] = f1;
	 assign L[0] = 1'b1;
	 assign dot = X[0];
	 
endmodule