module door_top
	(input logic[7:0] SERIAL,
	 output logic[3:0] STATE,
	 output logic[6:0] seg,
	 output logic seg_dot, ENA, IN1, IN2);
	 
	 logic ENB;
	 logic[3:0] IN;
	 
	 door_decoder door(.B(SERIAL), .X(STATE));
	 sevenseg_decoder sev_seg(.X(STATE), .L(seg), .dot(seg_dot));
	 Hbridge_decoder h_bridge(.X(STATE), .ENA(ENA), .ENB(ENB), .IN(IN));
	 
	 assign IN1 = IN[0];
	 assign IN2 = IN[1];
	 
endmodule