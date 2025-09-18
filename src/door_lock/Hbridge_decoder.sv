module Hbridge_decoder
	(input logic[3:0] X,
	 output logic ENA, ENB,
	 output logic[3:0] IN
	);
	
	assign ENA = X[3] ^ X[2];
	assign ENB = 0;
	
	assign IN[0] = X[3] & ~X[2];
	assign IN[1] = ~X[3] & X[2];
	assign IN[3:2] = 2'b0;
	
endmodule