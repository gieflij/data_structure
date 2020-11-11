module bcd_counter(
input   wire    clk,
input   wire    rst_n,

output  wire    [3:0]   q
);

wire    [3:0]   q_b;
wire    [3:0]   j;
wire    [3:0]   k;

//j[3], k[3]에 대한 assign statements
assign j[3] = q[2] & q[1] & q[0];
assign k[3] = q[0];
//

assign j[2] = q[1] & q[0];
assign k[2] = q[1] & q[0];

assign j[1] = q[0] & q_b[3];
assign k[1] = q[0];

assign j[0] = 1'b1;
assign k[0] = 1'b1;

jk_ff   U0( .clk(clk), .rst_n(rst_n), .j(j[0]), .k(k[0]), .q(q[0]), .q_b(q_b[0]) );
//나머지 3개의 JK flip-flops에 대한 instances
jk_ff   U1( .clk(clk), .rst_n(rst_n), .j(j[1]), .k(k[1]), .q(q[1]), .q_b(q_b[1]) );
jk_ff   U2( .clk(clk), .rst_n(rst_n), .j(j[2]), .k(k[2]), .q(q[2]), .q_b(q_b[2]) );
jk_ff   U3( .clk(clk), .rst_n(rst_n), .j(j[3]), .k(k[3]), .q(q[3]), .q_b(q_b[3]) );
//
endmodule
