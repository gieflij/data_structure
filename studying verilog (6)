`timescale 1ns / 1ps

module tb_jk_ff();

reg [2:0] i;

//JK filp flop 입력
reg     clk;
reg     rst_n;
reg     j;
reg     k;
//JK flip-flop 출력
wire    q;
wire    q_b;

//100NHz clock
parameter   PERI0D_100MHZ   =   10; //10ns
always begin
    #(PERI0D_100MHZ/2);
    clk <= ~clk;
end

jk_ff   jk_ff_u0    (   .clk(clk),  //JK flip flop 입력
                        .rst_n(rst_n),
                        .j(j),
                        .k(k),
                        
                        .q(q),  //JK flip_flop 출력
                        .q_b(q_b)   );

//testbench
initial begin
    i   =   3'b0;
    clk =   1'b0;
    rst_n   =   1'b0;
    j   =   1'b0;
    k   =   1'b0;
    #(PERI0D_100MHZ*2);
    rst_n   =   1'b1;
    
    for(i = 1'd0; i <= 3'd3; i = i + 3'd1) begin
        j = i[1];
        k = i[0];
        #PERI0D_100MHZ;
    end
    
    #PERI0D_100MHZ;
    
    rst_n = 1'b0;
    #(PERI0D_100MHZ*2);
    
    $stop;
end

endmodule
