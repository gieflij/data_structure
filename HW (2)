module clag (g,p,c_in,c,g_dot,p_dot); // Carry-Look-Ahead Generator

	input wire [3:0] g, p; // generated carry, propagated carry
	input wire c_in; // input carry

	output wire [3:0] c; // carry-look-ahead
	output wire g_dot, p_dot; // generated carry, propagated carry

	//make c[1], c[2], c[3] for next adder module
	assign c[0] = c_in;
	assign c[1] = g[0] | (c[0] & p[0]);
	assign c[2] = g[1] | (c[1] & p[1]);
	assign c[3] = g[2] | (c[2] & p[2]);
	//assign c[2] = g[1] | (g[0] & p[1]) | (c[0] & p[0] & p[1]);
	//assign c[3] = g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]) | (c[0] & p[0] & p[1] & p[2]);

	//make g_dot for carry-look-ahead
    assign g_dot = g[3] | (g[2]&p[3]) | (g[1]&p[2]&p[3]) | (g[0]&p[1]&p[2]&p[3]);
	//make p_dot for carry-look-ahead
	assign p_dot = p[0] & p[1] & p[2] & p[3];
	
endmodule

