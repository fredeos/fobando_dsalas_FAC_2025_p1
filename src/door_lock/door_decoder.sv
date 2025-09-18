module door_decoder
	(input logic[7:0] B,
	 output logic[3:0] X);
	
	logic A, z1, z2, z3;
	
	assign A = B[6] & B[5];
	assign z3 = B[1] | B[0];
	assign z1 = ~((B[3] | B[2]) | z3);
	assign z2 = ~(B[2] | z3);
	
	assign X[3] = (~B[7] & B[4]) & (A & z1);
	assign X[2] = (~B[7] & ~B[4]) & (A & z2);
	assign X[1] = ~(X[3] | X[2]);
	assign X[0] = X[1];
	
endmodule