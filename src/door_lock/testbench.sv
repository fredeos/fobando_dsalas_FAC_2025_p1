module testbench ();
	
	logic[7:0] serial;
	logic[3:0] x;
	logic[6:0] seg;
	logic dot, enable_A, in1, in2;
	
	door_top ccombinatory(.SERIAL(serial), .STATE(x), .seg(seg), .seg_dot(dot), .ENA(enable_A), .IN1(in1), .IN2(in2));
	initial begin
		$monitor("SERIAL: %b => STATES: %b => DISPLAY: %b + %b => HBRIDGE: [ENA=%b][IN:%b%b] \n", serial, x, seg, dot, enable_A, in1, in2);
		serial = 8'b0;
		#10;
		serial = 8'b01110000;
		#10;
		serial = 8'b01111000;
		#10;
		serial = 8'b01101000;
		#10;
	end

endmodule