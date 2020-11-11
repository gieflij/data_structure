module adder (x,y,c_in,g,p,s); // 1bit adder
	
	input wire x, y, c_in; // input operand : x, y  // input carry

	output wire g, p, s; // generated carry, propagated carry

    //make sum with x, y, c_in
	assign s = x^y^c_in;
	//make g for cla_4bits
	assign g = x&y;
	//make p for cla_4bits
    assign p = x^y;
    
endmodule
