module cla_16bits (x,y,c_in,s,c_out); // 16bits Carry-Look-Ahead Adder

	input wire [15:0] x, y; // input operand : x, y
	input wire c_in; // input carry

	output wire [15:0] s; // output sum
	output c_out; // output carry

	wire [3:0] g_dot, p_dot; // generated carry, propagated carry
	wire [3:0] c; // carry-look-ahead

	wire g_dot2, p_dot2; // Group-generated carry, Group-propagated carry

	//clag module instance to make c0,c4,c8,c12
	clag CLAG_2 (  .g(g_dot[3:0]),
	               .p(p_dot[3:0]),
	               .c_in(c_in),
	               .c(c[3:0]),
	               .g_dot(g_dot2),
	               .p_dot(p_dot2)  );

	//4 cla_4bits for g_dot & p_dot
	cla_4bits CLA4_0 ( .x(x[3:0]),
	                   .y(y[3:0]),
	                   .c_in(c[0]),
	                   .g_dot(g_dot[0]),
	                   .p_dot(p_dot[0]),
	                   .s(s[3:0]));
	                   
	cla_4bits CLA4_1 ( .x(x[7:4]),
	                   .y(y[7:4]),
	                   .c_in(c[1]),
	                   .g_dot(g_dot[1]),
	                   .p_dot(p_dot[1]),
	                   .s(s[7:4]));
	                   
	cla_4bits CLA4_2 ( .x(x[11:8]),
	                   .y(y[11:8]),
	                   .c_in(c[2]),
	                   .g_dot(g_dot[2]),
	                   .p_dot(p_dot[2]),
	                   .s(s[11:8]));
	                   
	cla_4bits CLA4_3 ( .x(x[15:12]),
	                   .y(y[15:12]),
	                   .c_in(c[3]),
	                   .g_dot(g_dot[3]),
	                   .p_dot(p_dot[3]),
	                   .s(s[15:12]));

	//c_out for 16bits_adder
	assign c_out = g_dot[3] | (g_dot[2] & p_dot[3]) | (g_dot[1] & p_dot[2] & p_dot[3]) | (g_dot[0] & p_dot[1] & p_dot[2] & p_dot[3]) | (c[0] & p_dot[0] & p_dot[1] & p_dot[2] & p_dot[3]) ;
	//assign c_out = c[3];      

endmodule

